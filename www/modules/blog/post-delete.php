<?php 

if (!isAdmin()) {
	header('Location: ' .HOST);
	die();
}


$title = "Удаление поста";
$description = "Удалить пост";
$post= R::load('posts',$_GET['id']);
if (isset($_POST['post-delete'])) {

	//Удаляем файлы изображений, если они есть
	$img = $post->img;	
	$imgSmall = $post->imgSmall;
	$postFolderLocation = ROOT . 'usercontent/blog/';

	if ($img != '') {
		$imgPath = $postFolderLocation . $img;
		if (file_exists($imgPath)) { unlink($imgPath); }
	}

	if ($imgSmall != '') {
		$imgPath = $postFolderLocation . $imgSmall;
		if (file_exists($imgPath)) { unlink($imgPath); }
	}	

	R::trash($post);
 
	header('Location: ' .HOST.'blog?result=postDeleted');
	exit();

}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post-delete.tpl";
$pageContent = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>