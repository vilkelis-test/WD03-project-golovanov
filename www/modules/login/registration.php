<?php

if ( isset($_POST['registration'])) {

	if (trim($_POST['email']) == '' ) {
		$errors[] = ['title' => 'Введите Email'];
	}

	if (trim($_POST['password']) == '' ) {
		$errors[] = ['title' => 'Введите Пароль'];
	}

	if ( R::count('users','email = ?', [$_POST['email']]) > 0 ) {
	  $errors[] = ['title' => 'Данные Email уже занят', 'desc' => '<p>Введите другой Email или воспользуйтесь <a class="error-with-desc__link" href="'.HOST.'login">формой входа</a> на сайт.</p> <p>Если вы забыли пароль, то воспользуйтесь <a class="error-with-desc__link" href="'.HOST.'lost-password">восстановлением пароля</a>.</p>'];
	}

	if (empty($errors)) {

		$user = R::dispense('users');
		$user->email = htmlentities($_POST['email']);
		$user->role = 'user';
		$user->password = password_hash($_POST['password'], PASSWORD_DEFAULT);
		R::store($user);

		$_SESSION['logged_user'] = $user;
		$_SESSION['login'] = '1';
		$_SESSION['role'] = $user->role;

		header('Location: ' .HOST.'profile-edit');
		exit();

	}

}

$title = "Регистрация нового пользователя";
$description = "Регистрация нового пользователя";

ob_start();
include ROOT.'templates/login/form-registration.tpl';
$pageContent = ob_get_contents();
ob_end_clean();

include ROOT.'templates/_parts/_head.tpl';
include ROOT.'templates/login/login-page.tpl';
include ROOT.'templates/_parts/_foot.tpl';

?>