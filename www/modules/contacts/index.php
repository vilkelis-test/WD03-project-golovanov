<?php

if(isset($_POST['message-send'])) {


	if (trim($_POST['email']) == '' ) {
		$errors[] = ['title' => 'Введите Email'];
	}

	if (trim($_POST['text']) == '' ) {
		$errors[] = ['title' => 'Введите текст сообщения'];
	}

	$isPhoto = false;
	if(empty($errors)) {

			if (isset($_FILES['file']['name']) &&  $_FILES['file']['tmp_name'] != '' ){

				$isPhoto = true;
				$fileName = $_FILES['file']["name"];
				$fileTmpLoc = $_FILES['file']["tmp_name"];
				$fileType = $_FILES['file']["type"];
				$fileSize = $_FILES['file']["size"];
				$fileErrorMsg = $_FILES['file']["error"];
				
				$arr = explode(".", $fileName);
				$fileExt = end($arr);

				list($width, $height) = getImagesize($fileTmpLoc);
				if ($width < 10 || $height < 10) {

					$errors[] = ['title' => 'Изображение слишком мало. Загрузите изображение большего размера.'];

				} else if ($fileSize > 4194304) {

					$errors[] = ['title' => 'Файл изображения не должен быть более 4Мб'];

				} else if ( !preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName) ) {

					$errors[] = ['title' => 'Файл имеет неверный формат', 'desc' => '<p>Поддерживаются файлы в формате gif, jpg, jpeg или png.</p>'];

				} else if ($fileErrorMsg == 1) {

					$errors[] = ['title' => 'При загрузке файла произошла ошибка', 'desc' => '<p>Повторите загрузку файла</p>'];
				}

			}
	}	

	if(empty($errors) && $isPhoto == true) {
		
			$folderLocation = ROOT . 'usercontent/upload_files/';

			$db_file_name = rand(10000000000,99999999999) . "." . $fileExt;

			$uploadedfile = $folderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadedfile);
			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла'];
			} 
	}	

	if(empty($errors)) {
		$message = R::dispense('messages');
		$message->email = htmlentities($_POST['email']);
		$message->name = htmlentities($_POST['name']);
		$message->text = htmlentities($_POST['text']);
		$message->dateTime = R::isoDateTime();

		if($isPhoto == true) {
			$message->message_file_original = $fileName;
			$message->message_file = $db_file_name;
		}

		R::store($message);

		$success[] = ['title' => 'Сообщение было успешно отправлено'];

	}

}

$contacts = R::load('contacts',1);

$title = "Контакты";
$description = "Контакты";

ob_start();
include ROOT.'templates/_parts/_header.tpl';
include ROOT.'templates/contacts/contacts.tpl';
$pageContent = ob_get_contents();
ob_end_clean();

include ROOT.'templates/_parts/_head.tpl';
include ROOT.'templates/template.tpl';
include ROOT.'templates/_parts/_footer.tpl';
include ROOT.'templates/_parts/_foot.tpl';

?>