<?php

$server= 'localhost';
$user= 'root';
$password=" ";
$database='book-seller';
  session_start();
  $count = 0;
  // connecto database
  
  $title = "Index";
  if(isset($_SESSION['login']) && $_SESSION['login']== true)
  {
    require "./template/loggedin_header.php";
  }
  else{
    require "./template/header.php";
  }
  
  require_once "./functions/database_functions.php";
  $conn = db_connect($server, $user, $password,$database);
  $row = select4LatestBook($conn);
?>
      <!-- Example row of columns -->
      <p class="lead text-center text-muted">Latest books</p>
      <div class="row">
        <?php foreach($row as $book) { ?>
      	<div class="col-md-3">
      		<a href="book.php?bookisbn=<?php echo $book['book_isbn']; ?>">
           <img class="img-responsive img-thumbnail" src="./bootstrap/img/<?php echo $book['book_image']; ?>">
          </a>
      	</div>
        <?php } ?>
      </div>
<?php
  if(isset($conn)) {mysqli_close($conn);}
  require_once "./template/footer.php";
?>