<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Удалить пост</div>
			<?php require ROOT.'templates/_parts/_errors.tpl'; ?>					
			<form class="form mb-100 pb-20 pt-35"  action="<?=HOST?>blog/post-delete?id=<?=$post->id?>" method="POST"  >				
				<div class="fieldset pb-20">
					 
						<p>Вы действительно хотите удалить пост 
							<strong><?=$post->title?></strong> от <?=rus_date("j F Y H:i",strtotime($post['date_time']))?>
							?
						</p>
				 
				</div>
				<div class="row">
					<div class="col-md-auto pr-10">
						<input type="submit" name="post-delete" value="Удалить" class="button button--del ">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>blog/post?id=<?=$post->id?>">Отмена</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>