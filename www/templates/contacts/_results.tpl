<?php if ($_GET['result'] == 'contactsUpdated') { ?>
  <div class="error error-success" data-notify-hide>
   Контактные данные успешно изменены
  </div>
<?php } ?>

<?php if ($_GET['result'] == 'messageDeleted') { ?>
  <div class="error error-success" data-notify-hide>
   Сообщение удалено успешно
  </div>
<?php } ?>