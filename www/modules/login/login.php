<?php

if ( isset($_POST['login'])) {

	if (trim($_POST['email']) == '' ) {
		$errors[] = ['title' => 'Введите Email'];
	}

	if (trim($_POST['password']) == '' ) {
		$errors[] = ['title' => 'Введите Пароль'];
	}

	if(empty($errors)) {

		$user = R::findOne('users','email = ?', [$_POST['email']]);

		if ( $user  ) {
		  if ( password_verify( $_POST['password'], $user->password ) ) {
			
			$_SESSION['logged_user'] = $user;
			$_SESSION['login'] = '1';
			$_SESSION['role'] = $user->role;
			if (isset($_POST['save-me'])) {
				ini_set('session.gs_maxlifetime',31104000);
				ini_set('session.cookie_lifetime',31104000);
			}
			header('Location: ' .HOST.'');
			exit();

		  } else {
			$errors[] = ['title' => 'Пароль либо Email введен неверно.','desc' => '<p>Проверьте раскладку клавиатуры и регистр символов.</p><p>Если вы забыли пароль, то воспользуйтесь <a class="error-with-desc__link" href="'.HOST.'lost-password">восстановлением пароля</a>.</p>'];
		  }
		}
		else {
			$errors[] = ['title' => 'Пароль либо Email введен неверно.','desc' => '<p>Проверьте раскладку клавиатуры и регистр символов.</p><p>Если вы забыли пароль, то воспользуйтесь <a class="error-with-desc__link" href="'.HOST.'lost-password">восстановлением пароля</a>.</p>'];
		}

	}
}

$title = "Вход на сайт";
$description = "Вход на сайт";

ob_start();
include ROOT.'templates/login/form-login.tpl';
$pageContent = ob_get_contents();
ob_end_clean();

include ROOT.'templates/_parts/_head.tpl';
include ROOT.'templates/login/login-page.tpl';
include ROOT.'templates/_parts/_foot.tpl';

?>