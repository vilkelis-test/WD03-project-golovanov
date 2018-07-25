<?php if ($_GET['result'] == 'postDeleted') { ?>
  <div class="error error-success" data-notify-hide>
   Пост успешно удален
  </div>
<?php } ?>

<?php if ($_GET['result'] == 'postCreated') { ?>
  <div class="error error-success" data-notify-hide>
   Новый пост успешно добавлен
  </div>
<?php } ?>

<?php if ($_GET['result'] == 'postUpdated') { ?>
  <div class="error error-success" data-notify-hide>
   Пост успешно изменен
  </div>
<?php } ?>