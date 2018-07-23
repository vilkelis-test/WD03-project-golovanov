<?php

 unset($_SESSION['logged_user']);
 unset($_SESSION['login']);
 unset($_SESSION['role']);
 setcookie(session_name(),'',time() - 1, ''); 
 session_destroy();
 header('Location: ' .HOST);
 exit();

?>