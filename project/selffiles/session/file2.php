<?php
session_start();

$n= $_SESSION['name'];
$_SESSION['login']=6;
$con= $_SESSION['login'];
echo $n." ". $con;
session_abort();
?>