<?php 
	function dataForContacts($fieldName) {
		global $contacts, $errors;		
		$val = !empty($errors) ? $_POST[$fieldName] : $contacts[$fieldName];
		return $val;
	}
?>

<div class="container">
	<div class="row">
		<div class="col-xl-12">
			<div class="title-1 m-0 pt-60">Редактировать данные</div>
			<?php require ROOT.'templates/_parts/_errors.tpl'; ?>	
			<form class="form mb-100 pb-20 pt-35" action="<?=HOST?>contacts-edit" method="POST">
				<div class="row fieldset">
					<div class="col-3"><label><div class="fieldset__title">Имя</div>
						<input name="name" class="input" placeholder="Введите имя" value="<?=dataForContacts('name')?>"/></label></div>
					<div class="col-3"><label><div class="fieldset__title">Фамилия</div>
						<input name="surname" class="input" placeholder="Введите фамилию" value="<?=dataForContacts('surname') ?>"/></label></div>
				</div>
				<div class="row fieldset">
					<div class="col-3"><label><div class="fieldset__title">Email</div>
						<input class="input" name="email" type="email" placeholder="Введите email" value="<?=dataForContacts('email') ?>"/></label></div>
					<div class="col-3"><label><div class="fieldset__title">Skype</div>
						<input class="input" name="skype" placeholder="Введите skype" value="<?=dataForContacts('skype') ?>"/></label></div>
				</div>
				<div class="row fieldset">
					<div class="col-3"><label><div class="fieldset__title">Вконтакте</div>
						<input class="input" name="vk" placeholder="Введите ссылку на профиль" value="<?=dataForContacts('vk') ?>"/></label></div>
					<div class="col-3"><label><div class="fieldset__title">Facebook</div>
						<input class="input" name="fb" placeholder="Введите ссылку на профиль"/ value="<?=dataForContacts('fb') ?>"></label></div>
					<div class="col-3"><label><div class="fieldset__title">GitHub</div>
						<input class="input" name="github" placeholder="Введите ссылку на профиль" value="<?=dataForContacts('github') ?>"/></label></div>
					<div class="col-3"><label><div class="fieldset__title">Twitter</div>
						<input class="input" name="twitter" placeholder="Введите ссылку на профиль" value="<?=dataForContacts('twitter') ?>"/></label></div>
				</div>
				<div class="row fieldset mb-30">
					<div class="col-3"><label><div class="fieldset__title">Телефон</div>
						<input class="input" name="phone" placeholder="Введите телефон" value="<?=dataForContacts('phone') ?>" /></label></div>
					<div class="col-3"><label><div class="fieldset__title">Адрес</div>
						<input class="input" name="address" placeholder="Введите адрес" value="<?=dataForContacts('address') ?>"/></label></div>
				</div>
				<div class="row">
					<div class="col-md-auto pr-10"><input class="button button--save" type="submit" name="contacts-save" value="Сохранить"></div>
					<div class="col-md-auto pl-10"><a class="button" href="<?=HOST?>contacts">Отмена</a></div>
				</div>
			</form>
		</div>
	</div>
</div>