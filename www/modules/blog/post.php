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

$sqlComments = "
 SELECT 
	 c.text,
	 c.date_time, 
	 u.name as user_name, 
	 u.surname as user_surname, 
	 u.photo_small as user_photo_small,
	 u.email as user_email
 FROM comments c
 LEFT JOIN users u on u.id = c.user_id		
 WHERE 
   c.post_id = ? 
 ORDER BY c.date_time DESC
";

$comments = R::getAll($sqlComments,[$post['id']]);

$title = $post['title'];
$description = "Пост: ".$post['title'];

if(isset($_POST['addComment'])) {
	if(trim($_POST['commentText']) == '') {
		$errors[] = ['title' => 'Введите текст комментария'];
	}

	if(empty($errors)) {
		$comment = R::dispense('comments');
		$comment->postId = htmlentities($_GET['id']);
		$comment->userId = htmlentities($currentUser->id);
		$comment->text = htmlentities($_POST['commentText']);
		$comment->dateTime = R::isoDateTime();
		R::store($comment);
		header('Location: '.HOST.'blog/post?id='.$_GET['id'].'#comments');
		exit();
	}
}

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