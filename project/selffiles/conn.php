<?php

    $server="localhost";
    $uname="root";
    $password="";
    $db_name= "bookseller";

    $conn= mysqli_connect($server,$uname,$password,$db_name);

    if(!$conn)
    {
        echo "connection failed";
    }
?>