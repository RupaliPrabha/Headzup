<?php 
    session_start();

?>
<html>
    <head>
        session variables defined
    </head>
    <body>
        "declaring session variables"
        <br>
        <?php
            $_SESSION['name']='namihsa';
            $_SESSION['login']= true;
            session_abort();
        ?>
    </body>
</html>