<?php 

$title = "Новая категория";
$description = "Создать новую категорию";

if (isset($_POST['category-new'])) {

	if (trim($_POST['catTitle']) == '' ) {
		$errors[] = ['title' => 'Введите Название категории'];
	}

 
	if(empty($errors)) {	

		$category = R::dispense('categories');
        
		$category->title = htmlentities($_POST['catTitle']);
		$category->authorId = $currentUser->id;
		$category->dateTime = R::isoDateTime();

		R::store($category);
	 
		header('Location: ' .HOST.'blog/categories?result=catCreated');
		exit();
	}


}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/categories/new.tpl";
$pageContent = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>