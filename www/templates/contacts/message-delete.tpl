<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Удалить сообщение</div>
			<?php require ROOT.'templates/_parts/_errors.tpl'; ?>					
			<form class="form mb-100 pb-20 pt-35"  action="<?=HOST?>message-delete?id=<?=$message['id']?>" method="POST"  >				
				<div class="fieldset pb-20">
					 
						<p>Вы действительно хотите удалить сообщение пользователя
							<strong><?=$message['name'] !='' ? $message['name'] : $message['email'] ?></strong> 
							от <?=rus_date("j F Y H:i",strtotime($message['date_time']))?>
							?
						</p>
				 
				</div>
				<div class="row">
					<div class="col-md-auto pr-10">
						<input type="submit" name="message-delete" value="Удалить" class="button button--del ">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>messages>">Отмена</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>