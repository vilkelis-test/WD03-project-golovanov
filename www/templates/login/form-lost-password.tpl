<form class="login-page-form" method="POST" action="<?=HOST?>lost-password">
	<div class="login-page-form__header">Восстановление пароля</div>
<?php
	require ROOT.'templates/_parts/_errors.tpl';
?>	

<?php
	require ROOT.'templates/_parts/_success.tpl';
?>	

	<div class="login-page-form__row">
		<div class="error error-js hidden"> </div>
	</div>
   <?php if ( empty($success) ): ?>
	<div class="login-page-form__row"><input name="email" class="input" type="email" placeholder="E-mail" <?= !empty($errors) ? 'value="'.htmlentities($_POST['email']).'"' : ''?> />
	</div>
	<?php endif ?>
	<div class="login-page-form__row text-center">
		<a class="login-page__links" href="<?=HOST?>login">Перейти на страницу входа</a>
	</div>

	<?php if ( empty($success) ): ?>
	<div class="login-page-form__footer"><input type="submit" name="lost-password" class="button button--lost-password"  value="Восстановить пароль"></div>
	<?php endif ?>
</form>