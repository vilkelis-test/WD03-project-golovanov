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

<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10">
				<div class="title-2 color">Комментарии пользователя</div>
				<div class="profile-comments mb-100">
					<div class="user-comment">
						<div class="user-comment-wrap">
							<div class="comment-wrap">
								<div class="user-name"><a href="#">Поездка в LA</a></div>
								<div class="user-date"><svg class="svg-inline--fa fa-clock fa-w-16" aria-hidden="true" data-prefix="far" data-icon="clock" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm0 448c-110.5 0-200-89.5-200-200S145.5 56 256 56s200 89.5 200 200-89.5 200-200 200zm61.8-104.4l-84.9-61.7c-3.1-2.3-4.9-5.9-4.9-9.7V116c0-6.6 5.4-12 12-12h32c6.6 0 12 5.4 12 12v141.7l66.8 48.6c5.4 3.9 6.5 11.4 2.6 16.8L334.6 349c-3.9 5.3-11.4 6.5-16.8 2.6z"></path></svg><!-- <i class="far fa-clock"></i> --><span class="user-date--dat">05 Мая 2017 года в 15:45</span></div>
							</div>
							<p class="user-text">Замечательный парк, обязательно отправлюсь туда этим летом.</p>
						</div>
					</div>
					<div class="user-comment">
						<div class="user-comment-wrap">
							<div class="comment-wrap">
								<div class="user-name"><a href="#">Ноутбук для веб-разработчика</a></div>
								<div class="user-date"><svg class="svg-inline--fa fa-clock fa-w-16" aria-hidden="true" data-prefix="far" data-icon="clock" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm0 448c-110.5 0-200-89.5-200-200S145.5 56 256 56s200 89.5 200 200-89.5 200-200 200zm61.8-104.4l-84.9-61.7c-3.1-2.3-4.9-5.9-4.9-9.7V116c0-6.6 5.4-12 12-12h32c6.6 0 12 5.4 12 12v141.7l66.8 48.6c5.4 3.9 6.5 11.4 2.6 16.8L334.6 349c-3.9 5.3-11.4 6.5-16.8 2.6z"></path></svg><!-- <i class="far fa-clock"></i> --><span class="user-date--dat">15 Мая 2017 года в 10:02</span></div>
							</div>
							<p class="user-text">Замечательный парк, обязательно отправлюсь туда этим летом.</p>
						</div>
					</div>
					<div class="user-comment">
						<div class="user-comment-wrap">
							<div class="comment-wrap">
								<div class="user-name"><a href="#">Настройка Sublime</a></div>
								<div class="user-date"><svg class="svg-inline--fa fa-clock fa-w-16" aria-hidden="true" data-prefix="far" data-icon="clock" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm0 448c-110.5 0-200-89.5-200-200S145.5 56 256 56s200 89.5 200 200-89.5 200-200 200zm61.8-104.4l-84.9-61.7c-3.1-2.3-4.9-5.9-4.9-9.7V116c0-6.6 5.4-12 12-12h32c6.6 0 12 5.4 12 12v141.7l66.8 48.6c5.4 3.9 6.5 11.4 2.6 16.8L334.6 349c-3.9 5.3-11.4 6.5-16.8 2.6z"></path></svg><!-- <i class="far fa-clock"></i> --><span class="user-date--dat">12 Мая 2017 года в 20:39</span></div>
							</div>
							<p class="user-text">Замечательный парк, обязательно отправлюсь туда этим летом.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>