<div class="container">
		<div class="row align-items-center mt-40">
			<div class="col offset-md-1">
				<div class="title-1 color">Профиль</div>
			</div>
			<div class="col text-right"><a class="button button--edit" href="<?=HOST?>profile-edit"> Редактировать</a></div>
		</div>
		<div class="row offset-md-1">
			<div class="col-md-auto">
				<div class="avatar">
					<?php if( $currentUser->photo != '') {?>
					<img src="<?=HOST?>usercontent/photo/<?=$user->photo?>" alt="<?=$user->name.' '.$user->surname?>">
					<?php } ?>
				</div>
			</div>
			<div class="col">
				<div class="user-info">
					<div class="user-info__title">Имя и фамилия</div>
					<div class="user-info__desc"><?=$user->name.' '.$user->surname?></div>
				</div>
				<div class="user-info">
					<div class="user-info__title">Email</div>
					<div class="user-info__desc"><a href="mailto:google.com"><?=$user->email?></a></div>
				</div>
				<div class="user-info">
					<div class="user-info__title">Страна, Город</div>
					<div class="user-info__desc"><?=$user->country?>, <?=$user->city?></div>
				</div>
			</div>
		</div>
</div>

<?php if(count($comments) > 0 ) { ?>
<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10">
				<div class="title-2 color">Комментарии пользователя</div>
				<div class="profile-comments mb-100">					
					<?php 
						foreach ($comments as $comment) { 
							 include ROOT.'templates/profile/_comment-card.tpl'; 
						} 
					?>
				</div>
			</div>
		</div>
</div>
<?php }?>