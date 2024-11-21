<doctype html>
<html>
    <head>
        <title>Login Page for website</title>

    </head>
    <body>
        <form action="login_verify.php" method="post">
            <h2>LOGIN</h2>
            <?php 
                if(isset($_GET['error']))
                {
                    ?>
                    <p class="error"></php>
                    <?php
                        echo $_GET['error'];
                }
            ?>
            <label for="email">
                <input type="text" name="email"> email<br><br>
            </label>
            <label for="password">
                <input type="password" name="password">Password<br>
            </label>
            <br><br>
            <input type="submit" value="Login" name="submit">
            <input type="reset" value="clear">
        </form>
    </body>
</html>