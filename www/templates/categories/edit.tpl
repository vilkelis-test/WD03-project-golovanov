<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Редактировать категорию блога</div>
			<?php require ROOT.'templates/_parts/_errors.tpl'; ?>					
			<form class="form mb-100 pb-20 pt-35"  action="<?=HOST?>blog/category-edit?id=<?=$category->id?>" method="POST"  >
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Название категории</div>
						<input name="catTitle" class="input" placeholder="Введите название категории" value="<?= !empty($errors) ? htmlentities($_POST['catTitle']) : $category->title  ?>" >
					</label>
				</div>
				<div class="row">
					<div class="col-md-auto pr-10">
						<input type="submit" name="category-update" value="Сохранить" class="button button--save">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>blog/categories">Отмена</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>