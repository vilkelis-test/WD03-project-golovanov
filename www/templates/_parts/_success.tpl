<?php
	foreach($success as $item) {
	if(count($item) == 1) { ?>	
<div class="registration-page-form__row">
  <div class="error error-success"><?=$item['title']?></div>
</div>
<?php } else if (count($item) == 2) { ?>
<div class="registration-page-form__row">
	<div class="error-with-desc error-success"><?=$item['title']?></div>
	<div class="error-with-desc-bottom">

			 <?=$item['desc']?>

	</div>
</div>			 
<?php
		}
	}
?>