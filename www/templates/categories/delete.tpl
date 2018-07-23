<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Удалить категорию блога</div>
			<?php require ROOT.'templates/_parts/_errors.tpl'; ?>					
			<form class="form mb-100 pb-20 pt-35"  action="<?=HOST?>blog/category-delete?id=<?=$category->id?>" method="POST"  >				
				<div class="fieldset pb-20">
					 
						<p>Вы действительно хотите удалить категорию 
							<strong><?=$category->title?></strong> 
							с id = <strong><?=$category->id?> ?</strong> 
						</p>
				 
				</div>
				<div class="row">
					<div class="col-md-auto pr-10">
						<input type="submit" name="category-delete" value="Удалить" class="button button--del ">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>blog/categories">Отмена</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>