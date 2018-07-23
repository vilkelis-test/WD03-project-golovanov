<?php 

$title = "Редактирование профиля";
$description = "Редактирование профиля пользователя";

$user = R::load('users', $currentUser->id);

//Если пользователь не найден в базе данных - небходимо выйти
if ( empty($user) ) {
	header('Location: ' .HOST.'logout');
	exit();	
}

//Записываем актуальные данные по пользователю в сессию
$_SESSION['logged_user'] = $user;
$currentUser = $_SESSION['logged_user'];

if (isset($_POST['profile-update'])) {

	if (trim($_POST['email']) == '' ) {
		$errors[] = ['title' => 'Введите Email'];
	}

	if (trim($_POST['name']) == '' ) {
		$errors[] = ['title' => 'Введите имя'];
	}

	if (trim($_POST['surname']) == '' ) {
		$errors[] = ['title' => 'Введите фамилию'];
	}

 
	if(empty($errors)) {
		 
		if ( R::count('users','email = ? and id <> ?', [$_POST['email'], $user->id]) > 0  ) {

			$errors[] = ['title' => 'E-mail используется другим пользователем.','desc'=>'<p>Указанные E-mail уже используется другим пользователем.</p><p>Укажите другой E-mail.</p>'];
		}
	}

	$isPhoto = false;
	if(empty($errors)) {

			if (isset($_FILES['photo']['name']) &&  $_FILES['photo']['tmp_name'] != '' ){

				$isPhoto = true;
				$fileName = $_FILES['photo']["name"];
				$fileTmpLoc = $_FILES['photo']["tmp_name"];
				$fileType = $_FILES['photo']["type"];
				$fileSize = $_FILES['photo']["size"];
				$fileErrorMsg = $_FILES['photo']["error"];
				
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
		
			$photo = $user->photo;	
			$photoSmall = $user->photoSmall;
			$photoFolderLocation = ROOT . 'usercontent/photo/';

			//Удаляем файл, если он сушествует
			if ($photo != '') {
				$photoPath = $photoFolderLocation . $photo;
				if (file_exists($photoPath)) { unlink($photoPath); }
			}

			if ($photoSmall != '') {
				$photoPath = $photoFolderLocation . $photoSmall;
				if (file_exists($photoPath)) { unlink($photoPath); }
			}

			//Перемещаем загружаемый файл в нашу папку
			$db_file_name = rand(10000000000,99999999999) . "." . $fileExt;
			$uploadedfile = $photoFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadedfile);
			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла'];
			} else {
				include_once( ROOT."libs/image_resize_imagick.php");

				//Big image
				$target_file = $uploadedfile;
				$resized_file = $uploadedfile;
				$wmax = 222;
				$hmax = 222;
				$img = createThumbnail($target_file,$wmax, $hmax);
				$img->writeImage($resized_file);

				$photo = $db_file_name;

				//Small image
				$target_file = $uploadedfile;
				$resized_file = $photoFolderLocation . '48-' . $db_file_name;
				$wmax = 48;
				$hmax = 48;
				$img = createThumbnail($target_file,$wmax, $hmax);
				$img->writeImage($resized_file);

				$photoSmall = '48-'.$db_file_name;
			}
	}

	if(empty($errors)) {	

		if($isPhoto == true) {
			$user->photo = $photo;
			$user->photoSmall = $photoSmall;
		}

		$user->name = htmlentities($_POST['name']);
		$user->surname = htmlentities($_POST['surname']);
		$user->email = htmlentities($_POST['email']);
		$user->city = htmlentities($_POST['city']);
		$user->country = htmlentities($_POST['country']);
		
		R::store($user);
		$_SESSION['logged_user'] = $user;
		header('Location: ' .HOST.'profile');
		exit();
	}


}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/profile/profile-edit.tpl";
$pageContent = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>