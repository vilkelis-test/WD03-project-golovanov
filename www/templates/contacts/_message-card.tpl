<div class="user-message mb-20">
	<div class="user-message__header">
		<div class="user-message__date"><?=rus_date("j F Y H:i",strtotime($message['date_time']))?></div>
		<div class="user-message__button">
			<a class="button button--del button--small" href="<?=HOST?>message-delete?id=<?=$message['id']?>"> Удалить</a>
		</div>
	</div>
	<div class="user-message__from">
		<div class="user-message__name"><?=$message['name']?></div>
		<a class="user-message__email user-message__a" href="mailto:<?=$message['email']?>"><?=$message['email']?></a>
	</div>
	<div class="user-message__text"><?=$message['text']?></div>
	<?php if($message['message_file'] != '') { ?>
		<div class="user-message__attachments">
			<div class="user-message__attachments-caption">Прикрепленный файл:
				<a class="user-message__attachments-name user-message__a" href="<?=HOST?>usercontent/upload_files/<?=$message['message_file']?>" target="_blank"><?=$message['message_file_original']?></a>
			</div>
		</div>
	<?php } ?>
</div>