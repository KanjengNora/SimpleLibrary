<?php 
// Logout untuk menghilangkan Session
session_start();
$_SESSION = [];
session_unset();
session_destroy();


echo "<script> alert('Anda telah Logout'); window.location='../sign/admin/sign_in.php'; </script>";
  exit;
?>