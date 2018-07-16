<?php

$details = R::find('about');

$aboutName = $details[1]['name'];
$aboutDescription = $details[1]['description'];

ob_start();
include ROOT.'templates/main/main.tpl';
$pageContent = ob_get_contents();
ob_end_clean();

include ROOT.'templates/_parts/_header.tpl';
include ROOT.'templates/template.tpl';
include ROOT.'templates/_parts/_footer.tpl';

?>