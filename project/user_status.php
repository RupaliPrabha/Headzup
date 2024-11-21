<?php
//this page checkes whether the user is logged in or not

    function check_login_status()
    {
        if (!isset($_SESSION['login']) && $_SESSION['login'] != true) {
            header("Location: login.php");
        } 
        else{
            header("Location: books.php");
        }
    }
?>