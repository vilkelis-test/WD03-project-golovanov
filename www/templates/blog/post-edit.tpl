<div class="container">
		<div class="row">
			<div class="col-xl-10 offset-1">
				<div class="title-1 m-0 pt-60">Редактировать пост</div>
				<?php require ROOT.'templates/_parts/_errors.tpl'; ?>					
				<form class="form mb-100 pb-20 pt-35" enctype="multipart/form-data" action="<?=HOST?>blog/post-edit?id=<?=$post['id']?>" method="POST"  >
					<div class="fieldset">
						<label>
							<div class="fieldset__title">Название</div>
							<input name="postTitle" class="input" placeholder="Введите название" value="<?= !empty($errors) ? htmlentities($_POST['postTitle']) : $post['title']  ?>" >
						</label>
					</div>
					<div class="fieldset">
						<label>
							<div class="fieldset__title">Категория</div>
							<select name="postCategory">
								<?php foreach ($cats as $cat) { ?>
									 <option value="<?=$cat->id?>"  <?= $cat->id == $post['category_id'] ? 'selected' : '' ?> ><?=$cat->title?></option>
								<?php }?>
							</select>								
						</label>
					</div>					
					<div class="fieldset">
						<div class="fieldset__title">Изображение</div>
						<div class="comment-row">Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 4Мб.</div>
						<div class="control-row">
							<div class="file"><label class="file__label"><input name="postImg"  class="file__input" type="file" name="file1"><span class="file__inner-label">Выбрать файл</span></label><span class="file__inner-caption">Файл не выбран</span></div>
						</div>

						<?php if ($post['img_small'] != '') { ?>
						<div class="control-row ">
							<div class="uploaded-image"><img class="uploaded-image__img" src="<?=HOST?>usercontent/blog/<?=$post['img_small']?>" alt="Загруженное изображение">
								<div class="uploaded-image__button"><a class="button button--del button--small" href="#"> Удалить</a></div>
							</div>
						</div>						
						<?php } ?>
					</div>
					<div class="fieldset"><label>
						<div class="fieldset__title">Содержание</div>
						<textarea id="ckEditor" name="postText" class="textarea height-200" rows="7" placeholder="Введите описание">
							<?= !empty($errors) ? htmlentities($_POST['postText']) : $post['text']  ?>							
						</textarea>
						<?php include_once ROOT.'templates/_parts/_ckEditorConnect.tpl';?>
					</label></div>
					<div class="row">
						<div class="col-md-auto pr-10"><input type="submit" name="post-update" value="Сохранить" class="button button--save"></div>
						<div class="col-md-auto pl-10"><a class="button" href="<?=HOST?>blog/post?id=<?=$post['id']?>">Отмена</a></div>
					</div>
				</form>
			</div>
		</div>
	</div>