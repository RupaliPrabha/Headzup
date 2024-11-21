<?php
    
    function validate($data)
    {
        $data= trim($data);
        $data= htmlspecialchars($data);
        return $data;
    }
	$name = (string)$_POST['name'];
	$email = (string)$_POST['email'];
	$passwords = (string)$_POST['pwds'];
	$phone = (string)$_POST['phone'];
	$address = (string)$_POST['Address'];
	$zipcode = (string)$_POST['zip'];
    $city= (string)$_POST['city'];
	$country= "India";

    $name=validate($name);
    $email=validate($email);
    $passwords=validate($passwords);
    $phone=validate($phone);
    $address=validate($address);
    $zipcode=validate($zipcode);
    $city=validate($city);
    $country=validate($country);


	// Database connection
	$server="localhost";
    $uname="root";
    $password="";
    $db_name= "bookseller";
                
    $conn= mysqli_connect($server,$uname,$password,$db_name);
                
    if(!$conn)
    {
        echo "connection failed";
        exit;
    }

    echo $query="INSERT INTO customers VALUES('$name','$email','$passwords','$phone','$address','$city','$zipcode','$country')";
   $sql=mysqli_query($conn, $query);
    if($sql)
    {
        echo "insertion complete";
        header("Location: login.php");
    }
    else{
        echo "try again";
        header("Location: registration.php");
    }
    
  
?>