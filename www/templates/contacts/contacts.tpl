<div class="container mt-30">
	<?php
		if(isset($_GET['result'])) {
			include ROOT."templates/contacts/_results.tpl";
		}
	?>
	<?php if(isAdmin()) { ?>
	<div class="flex-wrap-button pt-20">
		<div class="mr-20">
			<a class="button button--edit" href="<?=HOST?>contacts-edit"> Редактировать</a>
		</div>
		<a class="button" href="<?=HOST?>messages">Сообщения</a>
	</div>
	<?php }?>
	<div class="row mb-80">		
		<div class="col-md-10">
			<div class="row justify-content-between">
				<div class="col-md-6">					
					<h2 class="title-2 extrabold">Контакты</h2>

					<?php

					function showContactsItem($name, $title, $href = ''){
						global $contacts; 
						if( $contacts[$name] != '') {
						?>
						<div class="row contact-item">
							<div class="col"><strong><?=$title?></strong></div>
							<div class="col">
								<?php  if( $href != ''){?>
									<a class="contacts-block-info__item-link" href="<?=$href?>" target="blank"><?=$contacts[$name]?></a>
								<?php } else {
									echo $contacts[$name];

								}?>
							</div>
						</div>
					<?php }

					}

					echo showContactsItem('name','Имя');
					echo showContactsItem('surname','Фамилия');
					echo showContactsItem('email','Email','mailto:'.$contacts['email']);
					echo showContactsItem('skype','Skype','skype:'.$contacts['skype'].'?chart');

					if( $contacts['vk'] != '' || $contacts['fb'] != "" || $contacts['twitter']) {
					?>

						<div class="row contact-item">
							<div class="col"><strong>Социальные сети</strong></div>
							<div class="col">
								<?php  if( $contacts['vk'] != ''){?>
									<a class="contact-social-link" href="<?=$contacts['vk']?>">Профиль Вконтакте</a>
								<?php }?>
								<?php  if( $contacts['fb'] != ''){?>
									<a class="contact-social-link" href="<?=$contacts['fb']?>">Профиль Facebook</a>
								<?php }?>		
								<?php  if( $contacts['fb'] != ''){?>
									<a class="contact-social-link" href="<?=$contacts['fb']?>">Профиль Twitter</a>
								<?php }?>															
							</div>
						</div>
		 
					<?php
					}

					echo showContactsItem('phone','Телефон','tel:'.$contacts['phone']);
					echo showContactsItem('address','Адрес');

					?>
				</div>
				<div class="col-md-5">
					<h2 class="title-2 extrabold">Связаться со мной</h2>
					<form class="form"><input class="input mb-10" placeholder="Введите имя"><input class="input mb-10" placeholder="Email"><textarea class="textarea" rows="5" placeholder="Сообщение"></textarea>
						<div class="fieldset__title mt-20">Прикрепить файл</div>
						<div class="comment-row">jpg, png, pdf, doc, весом до 2Мб.</div>
						<div class="control-row mb-20">
							<div class="file"><label class="file__label"><input class="file__input" type="file" name="file3"><span class="file__inner-label file__inner-label--large-radius">Выбрать файл</span></label><span class="file__inner-caption">Файлы не выбран</span></div>
						</div><a class="button button--save" href="#"> Отправить</a></form>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="map" id="map"></div>

<!-- google maps-->
<script async="async" defer="defer" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAm799yaN1ZBAnyf6PT3Y_iXSZLkG5w1oE&amp;callback=initMap"></script>
<script src="<?=HOST?>templates/assets/js/map.js"></script>
<!-- //google maps-->