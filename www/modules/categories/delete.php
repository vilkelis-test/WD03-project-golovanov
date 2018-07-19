<?php 

$title = "Удаление категории";
$description = "Удалить категорию блога";
$category = R::load('categories',$_GET['id']);
if (isset($_POST['category-delete'])) {

	R::trash($category);
 
	header('Location: ' .HOST.'blog/categories?result=catDeleted');
	exit();

}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/categories/delete.tpl";
$pageContent = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>