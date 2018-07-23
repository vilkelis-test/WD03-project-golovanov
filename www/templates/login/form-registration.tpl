<form class="registration-page-form" method="POST" action="<?=HOST?>registration">
	<div class="registration-page-form__header">Регистрация</div>
<?php
	require ROOT.'templates/_parts/_errors.tpl';
?>	
	<div class="login-page-form__row">
		<div class="error error-js hidden"> </div>
	</div>
	
	<div class="registration-page-form__row"><input name="email" class="input" type="email" placeholder="E-mail" <?= !empty($errors) ? 'value="'.htmlentities($_POST['email']).'"' : ''?> /></div>
	<div class="registration-page-form__row"><input name="password" class="input" type="password" placeholder="Пароль" /></div>
	<div class="registration-page-form__footer"><input type="submit" name="registration" class="button button--registration pt-0" value="Регистрация"></div>
</form>