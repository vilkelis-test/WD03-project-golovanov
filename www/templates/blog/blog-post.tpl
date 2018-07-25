<div class="container mt-50 mb-120">
		<div class="row justify-content-center">
			<div class="col-md-10">
					<?php
					if(isset($_GET['result'])) { 	
						include ROOT."templates/blog/_results.tpl"; 
					}
					?>				
				<div class="blog-full-post pt-20">

					<?php if(isAdmin()) { ?>
						<div class="blog-full-post__button-edit">
							<a class="button button--edit" href="<?=HOST?>blog/post-edit?id=<?=$post['id']?>"> Редактировать</a>
							<a class="button button--del button--middle" href="<?=HOST?>blog/post-delete?id=<?=$post['id']?>"> Удалить</a>
						</div>
					<?php }?>
					<h1 class="blog__heading <?=isAdmin() ? 'mr-330' : ''?>" ><?=$post['title']?></h1>
					<div class="blog__info-wrap">
						<span class="blog__name"><?=$post['user_name']?> <?=$post['user_surname']?></span>
						<span class="blog__travel"><a href="#"><?=$post['cat_title']?></a></span>
						<span class="blog__date"><?=rus_date("j F Y H:i",strtotime($post['date_time']))?></span>
						<?php if(count($comments) > 0 ) { ?>
							<span class="blog__comments"> <a href="#comments"><?=commentNumber(count($comments))?></a></span>
						<?php } ?>
					</div>
					<div class="blog__image"> 
						<?php if($post['img'] != '') {?>
						<img src="<?=HOST?>usercontent/blog/<?=$post['img']?>" alt="<?=$post['title']?>">
						<?php }  ?>						 					
					</div>
					<div class="user-content">
						<?=html_entity_decode($post['text'])?>
					</div>
					<div class="flex-container-button mt-30"><a class="button " href="#"><svg class="svg-inline--fa fa-arrow-left fa-w-14 icon-style icon-style--back" aria-hidden="true" data-prefix="fas" data-icon="arrow-left" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M257.5 445.1l-22.2 22.2c-9.4 9.4-24.6 9.4-33.9 0L7 273c-9.4-9.4-9.4-24.6 0-33.9L201.4 44.7c9.4-9.4 24.6-9.4 33.9 0l22.2 22.2c9.5 9.5 9.3 25-.4 34.3L136.6 216H424c13.3 0 24 10.7 24 24v32c0 13.3-10.7 24-24 24H136.6l120.5 114.8c9.8 9.3 10 24.8.4 34.3z"></path></svg>
						<!-- <i class="fas fa-arrow-left icon-style icon-style--back"></i> -->Назад</a><a class="button" href="#">Вперед<svg class="svg-inline--fa fa-arrow-right fa-w-14 icon-style" aria-hidden="true" data-prefix="fas" data-icon="arrow-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M190.5 66.9l22.2-22.2c9.4-9.4 24.6-9.4 33.9 0L441 239c9.4 9.4 9.4 24.6 0 33.9L246.6 467.3c-9.4 9.4-24.6 9.4-33.9 0l-22.2-22.2c-9.5-9.5-9.3-25 .4-34.3L311.4 296H24c-13.3 0-24-10.7-24-24v-32c0-13.3 10.7-24 24-24h287.4L190.9 101.2c-9.8-9.3-10-24.8-.4-34.3z"></path></svg><!-- <i class="fas fa-arrow-right icon-style"></i> --></a></div>
					
					<?php if(count($comments) > 0 ) { ?>
					<h3 id="comments" class="user-comment-header"><?=commentNumber(count($comments))?></h3>
					<?php 
						foreach ($comments as $comment) { 
							 include ROOT.'templates/blog/_comment-card.tpl'; 
						} 
					?>
					<?php }?>	
					<?php include ROOT.'templates/blog/_add-comment.tpl'; ?>

				</div>
			</div>
		</div>
	</div>