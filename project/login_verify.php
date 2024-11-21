<?php
    session_start();
    $_SESSION['login']=false;
    
?>


<html>
    <body>
        <div>
            <?php 
                require_once "./template/header.php"
            ?>


             <?php
                    
                    if (!isset($_POST["submit"]))
                    {
                        echo "something went wrong!";
                        exit;
                    }
//connecting to database
                    $server="localhost";
                    $uname="root";
                    $password="";
                    $db_name= "bookseller";
                
                    $conn= mysqli_connect($server,$uname,$password,$db_name);
                
                    if(!$conn)
                    {
                        echo "connection failed";
                    }

                    if (isset($_POST['email']) && isset($_POST['password']))
                    {
                        function validate($data)
                        {
                            $data= trim($data);
                            $data= htmlspecialchars($data);
                            return $data;
                        }
                    }   
                    $email=validate($_POST['email']);
                    $pass= validate($_POST['password']);

                    //security check
                    if(empty($email) || empty($pass))
                    {
                        echo "Sorry! no information feeded into boxes";
                        exit;
                    }

                    //removing special characters from strings
                    $email=mysqli_real_escape_string($conn, $email);
                    $pass= mysqli_real_escape_string($conn, $pass);

                    
                    //get information from database
                    $query = "SELECT * from credentials WHERE email='$email'";
                    $result= mysqli_query($conn, $query);
                    if (!$result)
                    {
                        echo "email not found!!! <b>TRY AGAIN</b>";

                    }
                    
                    $row = mysqli_fetch_assoc($result);
                
                    $_SESSION['user']= $row['name'];
                

                    
                    if($row['email']==$email && $row['password']==$pass)
                    {
                        $_SESSION['login']=true;
                        $_SESSION['id']= session_id();
                        echo "Valid user";
                        header("Location: books.php");
                        
                    }
                    else{
                        echo" invalid credentials";
                        
                        exit;
                    }

                   
                    if (isset($conn))
                    {
                        mysqli_close($conn);
                    }
                                     
                    
                ?>

        </div>
    </body>

</html>


