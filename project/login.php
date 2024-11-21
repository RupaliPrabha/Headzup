<?php
if(isset($_SESSION['login']) && $_SESSION['login']== true)
{
  require "./template/loggedin_header.php";
}
else{
  require "./template/header.php";
}

?>
<html>
<head>
    <title>Login Page</title>
    <style>
        #headline{
            color:#A8A8A8;
        }
        #box{
            width:200px;
            background-color: white;
            color:black;
            border-color:#A8A8A8;
            margin:5px;
            padding:3px
            
        }
        .button{
            padding:7px;
            margin:15px;
            width:130px;
            color:black;
            background-color: #A8A8A8;
            border-radius:15px;
            font: arial;
            text:bold;
            border:none;
            font-family:verdana;
            font-size:100%;
        }

    </style>
</head>
<body style="background-color:whitesmoke"><center><br><br>
        <h2 id="headline">Hello Again!!!<br>You can Login now..</h2><br><br>
        <form  action="login_verify.php" method="post">
            
            <div>
                <label for="email"><b style="color:#A8A8A8">Email:</b></label>
                <input id="box" type="text" name="email"><br>
            </div>
            <br>
            <div>
                <label for="password"><b style="color:#A8A8A8">Password:</b></label>
                <input id="box" type="password" name="password"><br><br>
            </div>
            <section>
                <button class="button" type="submit" name="submit">Login</button>
                <input class="button" type="reset" value="Reset">
                <br><br><p id="headline">First time? Join our community <a href="registration.php">JOIN US</a></p>

            </section>
        </form>
        <br><br><br><br><br><br><br><br><br><br><br><br>
        
</center>
<footer><?php 
    require_once "./template/footer.php"
?></footer>
    </body>
    </html>


