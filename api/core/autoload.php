<?php session_start();

  $conn = new PDO("mysql:host=mysql;dbname=".$_ENV['MYSQL_ENV_MYSQL_DATABASE'], $_ENV['MYSQL_ENV_MYSQL_USER'], $_ENV['MYSQL_ENV_MYSQL_PASSWORD']);
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

?>
