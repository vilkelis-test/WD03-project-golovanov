<div class="container">
	<div class="row mb-90 ">


		<div class="col-xl-10 pt-50 offset-1">

					<?php
			if(isset($_GET['result'])) {
				include ROOT."templates/contacts/_results.tpl";
			}
		?>		
			<div class="title-1 mt-10  mb-35">Сообщения от пользователей</div>
			
				<?php foreach ($messages as $message) {
					include ROOT.'templates/contacts/_message-card.tpl';
				 } ?>				
		</div>
	</div>
</div>