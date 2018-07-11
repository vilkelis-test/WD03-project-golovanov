<?php

$title = "Блог";
$content = "Содержимое страницы Блог";

ob_start();
include ROOT.'templates/blog/blog.tpl';
$pageContent = ob_get_contents();
ob_end_clean();

include ROOT.'templates/_parts/_header.tpl';
include ROOT.'templates/template.tpl';
include ROOT.'templates/_parts/_footer.tpl';


?>