<form class="login-page-form" method="POST" action="<?=HOST?>set-new-password">
	<div class="login-page-form__header">Ввод нового пароля</div>
<?php
	require ROOT.'templates/_parts/_errors.tpl';
?>	

<?php
	require ROOT.'templates/_parts/_success.tpl';
?>	

	<div class="login-page-form__row">
		<div class="error error-js hidden"> </div>
	</div>
    <?php if ( $newPasswordReady == false ): ?>
	<div class="login-page-form__row"><input name="password" class="input" type="password" placeholder="Новый пароль" />
	</div>
	<?php endif ?>
	<div class="login-page-form__row text-center">
		<a class="login-page__links" href="<?=HOST?>login">Перейти на страницу входа</a>
	</div>

	<div class="login-page-form__footer">
		<?php if ( $newPasswordReady == false ): ?>
			<input type="hidden" name="resetemail" value="<?=$_GET['email']?>">
			<input type="hidden" name="onetimecode" value="<?=$_GET['code']?>">
			<input type="submit" name="set-new-password" class="button button--set-new-password"  value="Установить новый пароль">
		<?php endif ?>
	</div>
</form>