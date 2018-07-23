<div class="main-wrapper">
		<div class="container container--center  pt-40 pb-50">

			<?php
				if(isset($_GET['result'])) {
					include ROOT."templates/blog/_results.tpl";
				}
			?>

			<div class="row justify-content-between align-items-center pl-15 pr-15 pt-10">
				<div class="title-1">Блог веб-разработчика</div>
				<?php if(isAdmin()) { ?>
				<div class="section-ui"><a class="button button--edit" href="<?=HOST?>blog/post-new"> Добавить пост</a></div>
			<?php } ?>
			</div>
			<div class="row pb-35">	
			<?php 
				foreach($posts as $post) { 
			?>

				<?php	include ROOT . "templates/_parts/_blog-card.tpl";?>
				  
			<?php } ?>
            </div>							
		</div>
</div>