<?php if ($_GET['result'] == 'catCreated') { ?>
  <div class="error error-success" data-notify-hide>
   Категория успешно добавлена
  </div>
<?php } ?>

<?php if ($_GET['result'] == 'catUpdated') { ?>
  <div class="error error-success" data-notify-hide>
   Категория успешно изменена
  </div>
<?php } ?>

<?php if ($_GET['result'] == 'catDeleted') { ?>
  <div class="error error-success" data-notify-hide>
   Категория успешно удалена
  </div>
<?php } ?>