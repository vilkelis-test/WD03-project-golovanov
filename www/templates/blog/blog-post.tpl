<div class="container mt-70 mb-120">
		<div class="row justify-content-center">
			<div class="col-md-10">
				<div class="blog-full-post">
					<?php if(isAdmin()) { ?>
						<div class="blog-full-post__button-edit"><a class="button button--edit" href="#"> Редактировать</a></div>
					<?php }?>
					<h1 class="blog__heading"><?=$post['title']?></h1>
					<div class="blog__info-wrap">
						<span class="blog__name">Емельян Казаков</span>
						<span class="blog__travel"><a href="#">Путешествия</a></span>
						<span class="blog__date"><?=rus_date("j F Y H:i",strtotime($post['date_time']))?></span>
						<span class="blog__comments"> <a href="#">2 комментария</a></span>
					</div>
					<div class="blog__image"> 
						<?php if($post['img'] != '') {?>
						<img src="<?=HOST?>usercontent/blog/<?=$post['img']?>" alt="<?=$post['title']?>">
						<?php } else { ?>
						<img src="<?=HOST?>usercontent/blog-no-image.png" alt="<?=$post['title']?>">
						<?php } ?>						
					</div>
					<div class="user-content">
						<?=$post['text']?>
					</div>
					<div class="flex-container-button mt-30"><a class="button " href="#"><svg class="svg-inline--fa fa-arrow-left fa-w-14 icon-style icon-style--back" aria-hidden="true" data-prefix="fas" data-icon="arrow-left" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M257.5 445.1l-22.2 22.2c-9.4 9.4-24.6 9.4-33.9 0L7 273c-9.4-9.4-9.4-24.6 0-33.9L201.4 44.7c9.4-9.4 24.6-9.4 33.9 0l22.2 22.2c9.5 9.5 9.3 25-.4 34.3L136.6 216H424c13.3 0 24 10.7 24 24v32c0 13.3-10.7 24-24 24H136.6l120.5 114.8c9.8 9.3 10 24.8.4 34.3z"></path></svg><!-- <i class="fas fa-arrow-left icon-style icon-style--back"></i> -->Назад</a><a class="button" href="#">Вперед<svg class="svg-inline--fa fa-arrow-right fa-w-14 icon-style" aria-hidden="true" data-prefix="fas" data-icon="arrow-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M190.5 66.9l22.2-22.2c9.4-9.4 24.6-9.4 33.9 0L441 239c9.4 9.4 9.4 24.6 0 33.9L246.6 467.3c-9.4 9.4-24.6 9.4-33.9 0l-22.2-22.2c-9.5-9.5-9.3-25 .4-34.3L311.4 296H24c-13.3 0-24-10.7-24-24v-32c0-13.3 10.7-24 24-24h287.4L190.9 101.2c-9.8-9.3-10-24.8-.4-34.3z"></path></svg><!-- <i class="fas fa-arrow-right icon-style"></i> --></a></div>
					<h3 class="user-comment-header">2 комментария</h3>
					<div class="user-comment">
						<div class="user-comment-avatar">
							<div class="avatar--small"><img src="../img/avatars/avatar-2.jpg" alt="avatar-small"></div>
						</div>
						<div class="user-comment-wrap">
							<div class="comment-wrap">
								<div class="user-name">Джо До</div>
								<div class="user-date"><svg class="svg-inline--fa fa-clock fa-w-16" aria-hidden="true" data-prefix="far" data-icon="clock" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm0 448c-110.5 0-200-89.5-200-200S145.5 56 256 56s200 89.5 200 200-89.5 200-200 200zm61.8-104.4l-84.9-61.7c-3.1-2.3-4.9-5.9-4.9-9.7V116c0-6.6 5.4-12 12-12h32c6.6 0 12 5.4 12 12v141.7l66.8 48.6c5.4 3.9 6.5 11.4 2.6 16.8L334.6 349c-3.9 5.3-11.4 6.5-16.8 2.6z"></path></svg><!-- <i class="far fa-clock"></i> --><span class="user-date--dat">05 Мая 2017 года в 15:45</span></div>
							</div>
							<p class="user-text">Замечательный парк, обязательно отправлюсь туда этим летом.</p>
						</div>
					</div>
					<div class="user-comment">
						<div class="user-comment-avatar">
							<div class="avatar--small"><img src="../img/avatars/avatar-3.jpg" alt="avatar-small"></div>
						</div>
						<div class="user-comment-wrap">
							<div class="comment-wrap">
								<div class="user-name">Джо До</div>
								<div class="user-date"><svg class="svg-inline--fa fa-clock fa-w-16" aria-hidden="true" data-prefix="far" data-icon="clock" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm0 448c-110.5 0-200-89.5-200-200S145.5 56 256 56s200 89.5 200 200-89.5 200-200 200zm61.8-104.4l-84.9-61.7c-3.1-2.3-4.9-5.9-4.9-9.7V116c0-6.6 5.4-12 12-12h32c6.6 0 12 5.4 12 12v141.7l66.8 48.6c5.4 3.9 6.5 11.4 2.6 16.8L334.6 349c-3.9 5.3-11.4 6.5-16.8 2.6z"></path></svg><!-- <i class="far fa-clock"></i> --><span class="user-date--dat">05 Мая 2017 года в 15:45</span></div>
							</div>
							<p class="user-text">Замечательный парк, обязательно отправлюсь туда этим летом.</p>
						</div>
					</div>
					<div class="title-2 mb-15">Оставить комментарий</div>
					<div class="comment-add-wrapper">
						<div class="comment-add__avatar float-left">
							<div class="avatar--small"><img src="../img/avatars/avatar-1.jpg" alt="avatar-small"></div>
						</div>
						<div class="comment-add-block">
							<div class="comment-add-block__name">Юрий Ключевский</div>
							<div class="error">Комментарий не может быть пустым.</div>
							<div class="comment-add-block__text mt-10"><textarea class="textarea" rows="5" placeholder="Введите текст сообщения"></textarea></div>
						</div>
						<div class="comment-add__button mt-10"><a class="button" href="#">Опубликовать</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>