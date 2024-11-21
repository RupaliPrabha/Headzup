<!DOCTYPE html>
<html>
  <head>
<meta name="viewport" content="width=device-width, initial-scale=1">  
<style>  
body{  
  /* font-family: Calibri, Helvetica, sans-serif ;   */
    background-color:whitesmoke;
    
}  
.container {  
  text-align: center;
    padding: 50px;  
  background-color: whitesmoke;  
}  
  
input[type=text], input[type=password], textarea {  
  width: 50%;  
  padding: 7px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: line;  
  background: #f1f1f1;  
}  
input[type=text]:focus, input[type=password]:focus {  
  background-color: lightyellow;  
  outline: none;  
}  
 div {  
            padding: 10px 0;  
         }  
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  
.registerbtn {  
  background-color: #4CAF50;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 100%;  
  opacity: 0.9;  
}  
.registerbtn:hover {  
  opacity: 1;  
}  
</style>
</head>
<body>
 <div class="container" >
<center><h1>Registration Forms</h1></center>
<form action="?php $_SERVER['PHP_SELF']?" method="POST">

<label for="fname">Name:</label>

<input type="text" id="name" name="name" required placeholder="Enter Name" >
<br>
<label for="email">Email:</label>

<input type="email" id="email" name="email" required placeholder="Enter Email">
<br>
<br>
<label for="pwd">Password:</label>

<input type="password" id="pwd" name="pwd" minlength="8" maxlength="10" placeholder="********">
<br>
<label for="phone">Contact Number:</label>

<input type="tel" id="phone" name="phone" placeholder="+91-123-45-678" required><br>
<small>10 digit number only</small>
<br>
<br>
<label for="address">Address:</label>

<input type="text" name="Address" id="Address" required placeholder="Enter Address"><br>

<label for="city">City:</label>

<input type="text" name="city" id="city" required placeholder="Enter City"><br>

<label for="number">Zip Code:</label>
<input type="number" id="Zip" name="zip" placeholder="Enter Zip Code" required><br>
<br>
<input style="border: none; background-color: gray; width: 150px; height: 25px; border-radius: 3px;"  id="button" type="submit" value="Submit">

</form>

</body>
</html>

<?php
    include "login_verify.php";
	$Name = $_POST['name'];
	$email = $_POST['email'];
	$password = $_POST['pwd'];
	$number = $_POST['phone'];
	$address = $_POST['Address'];
	$zipcode = $_POST['zip'];
    $city= $_POST['city'];
	$country= "India";
	// Database connection
	$conn = new mysqli('localhost','root','','test');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$stmt = $conn->prepare("insert into registration(firstName, lastName, gender, email, password, number) values(?, ?, ?, ?, ?, ?)");
		$stmt->bind_param("sssssi", $firstName, $lastName, $gender, $email, $password, $number);
		$execval = $stmt->execute();
		echo $execval;
		echo "Registration successfully...";
		$stmt->close();
		$conn->close();
	}
?>