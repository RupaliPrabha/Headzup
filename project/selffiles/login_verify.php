<html>
    <head>   
        <style>
            .error {
                background : #F2DEDE;
                color: #A94442;
                padding: 10px;
                width: 95%;
                border-radius: 5px;
            }
        </style>
    </head>
    <body>
    <?php

            include "conn.php";

        if (isset($_POST['email']) && isset($_POST['password']))
        {
            function validate($data)
            {
                $data= trim($data);
                $data= htmlspecialchars($data);
                return $data;
            }

            $email=validate($_POST['email']);
            $pass= validate($_POST['password']);

            if(empty($email))
            {
                header("Location: index.php?error=Email is required");
                exit();
            }
            else if(empty($pass))
            {
                header("Location: index.php?error=Password is required");
            }
            else{
                $sql= "SELECT * FROM credentials where email='$email' AND password='$pass'";
                $result= mysqli_query($conn, $sql);
                
                $row= mysqli_fetch_assoc($result);
                echo $row['password'];
            }
        }
        else{
            echo "Wrong credentials"."<br>";
            exit();

        }
    ?>
    </body>
</html>
