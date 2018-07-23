<?php 


$sql = "
 SELECT 
	 p.*, 
	 u.name as user_name, 
	 u.surname as user_surname, 
	 c.title as cat_title
 FROM posts p
 LEFT JOIN categories c on c.id = p.category_id
 LEFT JOIN users u on u.id = p.author_id		
 WHERE 
   p.id = ? 
 LIMIT 1
";

$post = R::getRow($sql,[$_GET['id']]);

$title = $post['title'];
$description = "Пост: ".$post['title'];

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/blog-post.tpl";
$pageContent = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>