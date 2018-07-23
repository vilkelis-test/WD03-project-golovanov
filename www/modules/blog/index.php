<?php

$title = "Блог";
$content = "Мой блог";

ob_start();
include ROOT.'templates/_parts/_header.tpl';
include ROOT.'templates/blog/blog.tpl';
$pageContent = ob_get_contents();
ob_end_clean();

include ROOT.'templates/_parts/_head.tpl';
include ROOT.'templates/template.tpl';
include ROOT.'templates/_parts/_footer.tpl';
include ROOT.'templates/_parts/_foot.tpl';


?>