<?php 

$title = "Добавить пост";
$description = "Добавить новый пост в блог";

if (isset($_POST['post-new'])) {

	if (trim($_POST['postTitle']) == '' ) {
		$errors[] = ['title' => 'Введите Название поста'];
	}

	if (trim($_POST['postText']) == '' ) {
		$errors[] = ['title' => 'Введите Содержание поста'];
	}
 
	$isPhoto = false;
	if(empty($errors)) {

			if (isset($_FILES['postImg']['name']) &&  $_FILES['postImg']['tmp_name'] != '' ){

				$isPhoto = true;
				$fileName = $_FILES['postImg']["name"];
				$fileTmpLoc = $_FILES['postImg']["tmp_name"];
				$fileType = $_FILES['postImg']["type"];
				$fileSize = $_FILES['postImg']["size"];
				$fileErrorMsg = $_FILES['postImg']["error"];
				
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
		
			// $img = $post->img;	
			// $imgSmall = $post->imgSmall;
			$postFolderLocation = ROOT . 'usercontent/blog/';

			//Удаляем файл, если он сушествует
			// if ($img != '') {
			// 	$imgPath = $postFolderLocation . $img;
			// 	if (file_exists($imgPath)) { unlink($imgPath); }
			// }

			// if ($imgSmall != '') {
			// 	$imgPath = $postFolderLocation . $imgSmall;
			// 	if (file_exists($imgPath)) { unlink($imgPath); }
			// }

			//Перемещаем загружаемый файл в нашу папку
			$db_file_name = rand(10000000000,99999999999) . "." . $fileExt;
			$uploadedfile = $postFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadedfile);
			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла'];
			} else {
				include_once( ROOT."libs/image_resize_imagick.php");
				//Big image
				$target_file = $uploadedfile;
				$resized_file = $uploadedfile;
				$wmax = 920;
				$hmax = 620;
				$img = createThumbnailBig($target_file,$wmax, $hmax);
				$img->writeImage($resized_file);

				$postImg = $db_file_name;

				//Small image
				$target_file = $uploadedfile;
				$resized_file = $postFolderLocation . '320-' . $db_file_name;
				$wmax = 320;
				$hmax = 140;
				$img = createThumbnailCrop($target_file,$wmax, $hmax);
				$img->writeImage($resized_file);

				$postImgSmall = '320-'.$db_file_name;
			}
	}

	if(empty($errors)) {	

		$post = R::dispense('posts');
        
        if($isPhoto == true) {
        	$post->img = $postImg;
        	$post->imgSmall = $postImgSmall;
		}

		$post->title = htmlentities($_POST['postTitle']);
		$post->text = htmlentities($_POST['postText']);
		$post->authorId = $currentUser->id;
		$post->dateTime = R::isoDateTime();

		R::store($post);
	 
		header('Location: ' .HOST.'blog');
		exit();
	}


}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post-new.tpl";
$pageContent = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>