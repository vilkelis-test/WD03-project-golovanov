<?php if(isLoggedIn())  {?>
	<div class="title-2 mb-15 mt-30 pt-30">Оставить комментарий</div>
	<form class="comment-add-wrapper" method="POST" action="<?=HOST?>blog/post?id=<?=$post['id']?>">
		<div class="comment-add__avatar float-left">
			<div class="avatar--small">
			<?php if( $currentUser->photo_small != '') {?>								
				<img src="<?=HOST?>usercontent/photo/<?=$currentUser->photo_small?>" alt="<?= empty($currentUser->name) ? $currentUser->email : $currentUser->name . ' ' . $currentUser->surname?>" />								
			<?php } ?>
			</div>
		</div>
		<div class="comment-add-block">
			<div class="comment-add-block__name"><?=$currentUser->name?> <?=$currentUser->surname?></div>
			<div class="error error-js hidden">Комментарий не может быть пустым.</div>
			<div class="comment-add-block__text mt-10"><textarea name="commentText" class="textarea" rows="5" placeholder="Введите текст сообщения"></textarea></div>
		</div>
		<div class="comment-add__button mt-10">
			<input type="submit" class="button" name="addComment"  value="Опубликовать"  data-add-comment></div>
	</form>

<?php } else { ?>
	<div class="block-registration mt-60 ">
		<p>
			<a href="<?=HOST?>login">Войдите</a> 
			или 
			<a href="<?=HOST?>registration">зарегистрируйтесь</a><br>
			чтобы оставить комментарий
		</p>
	</div>
<?php } ?>