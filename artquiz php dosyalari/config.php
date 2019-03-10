<?php
define('HOST','localhost');
define('USER','root');
define('PASS','root');
define('DB','artquiz');
$conn = mysqli_connect(HOST,USER,PASS,DB) or die("You cant reach!");
mysqli_set_charset($conn,'utf8');
?>
