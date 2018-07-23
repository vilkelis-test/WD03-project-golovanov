<div class="main-wrapper">
		<div class="container container--center pt-40">
		 
			<?php
				if(isset($_GET['result'])) {
					include ROOT."templates/categories/_results.tpl";
				}
			?>
			<div class="row justify-content-between align-items-center pl-15 pr-15 pt-10">
				<div class="title-1">Категории блога</div>
				<?php if(isAdmin()) { ?>
				<div class="section-ui"><a class="button button--edit" href="<?=HOST?>blog/category-new"> Добавить категорию</a></div>
				<?php } ?>
			</div>

			<div class="row pl-15 pr-15 pb-50">	

				<table class="table">
					<thead class="thead-light">
						<tr>
							<th scope="col">id</th>
							<th scope="col">Название</th>
							<th scope="col">Редактировать</th>
							<th scope="col">Удалить</th>
						</tr>
					</thead>
					<tbody>
						<?php 
							foreach($categories as $category) { 
						?>	
						<tr>
							<td><?=$category->id?></td>
							<td><?=$category->title?></td>
							<td><a href="<?=HOST?>blog/category-edit?id=<?=$category->id?>">Редактировать</a></td>
							<td><a href="<?=HOST?>blog/category-delete?id=<?=$category->id?>">Удалить</a></td>							
						</tr>											 
						<?php } ?>
					</tbody>	
				</table>	

            </div>							
		</div>
</div>


