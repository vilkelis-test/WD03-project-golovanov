<?php 

if (!isAdmin()) {
	header('Location: ' .HOST);
	die();
}


$title = "Редактирование категории";
$description = "Редактировать категорию блога";
$category = R::load('categories',$_GET['id']);
if (isset($_POST['category-update'])) {

	if (trim($_POST['catTitle']) == '' ) {
		$errors[] = ['title' => 'Введите название категории'];
	}

 
	if(empty($errors)) {	

		$category->title = htmlentities($_POST['catTitle']);
		$category->authorId = $currentUser->id;
		$category->dateTime = R::isoDateTime();

		R::store($category);
	 
		header('Location: ' .HOST.'blog/categories?result=catUpdated');
		exit();
	}

}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/categories/edit.tpl";
$pageContent = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>