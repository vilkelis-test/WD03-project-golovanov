<div class="col-4">
	 
		<div class="card card-post mb-50">
			<?php if($post->imgSmall != '') {?>
			<img class="card-post__img" src="<?=HOST?>usercontent/blog/<?=$post->imgSmall?>" alt="<?=$post->title?>">
			<?php } else { ?>
			<img class="card-post__img" src="<?=HOST?>usercontent/blog-no-image.png" alt="<?=$post->title?>">
			<?php } ?>
			<div class="title-4"><?=mbCutSting($post->title,40)?></div>
			<a class="button" href="<?=HOST?>blog/post?id=<?=$post->id?>">Читать</a>
		</div>
 
</div>