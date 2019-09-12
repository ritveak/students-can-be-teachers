 <?php include "database.php"; ?>
<?php session_start(); ?>
<?php
	//Create Select Query
	$query="select * from shouts ";
	$shouts = mysqli_query($mysqli,$query);

 ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>PHP Quizzer!</title>
    <link rel="stylesheet" href="css/style.css" type="text/css" />
  </head>
  <body>
    <div id="container">
      <header>
        <div class="container">
          <h1>PHP Quizzer</h1>
	</div>
      </header>


      <main>
	<div class="container">
	     <h2>You are Done!</h2>
	     <p>Congrats! You have completed the test</p>
	     <p>Final socre: <?php echo $_SESSION['score']; ?></p>
	     <?php session_destroy(); ?>
	</div>
      </main>

<?php

 define('DBSERVER', 'localhost');
    define('DBUSERNAME', 'root');
    define('DBPASSWORD', '');
    define('DBDATABASE', 'c2c');
    $db = mysqli_connect(DBSERVER,DBUSERNAME,DBPASSWORD,DBDATABASE);
     $ls=$_SESSION['login_user'];
    $sc=$_SESSION['score'];
        $sub=$_SESSION['qn'];
    
        // username and password sent from form 
        if($sc>1){
        if($sub=="q1"){
        $sql = "update studentinfo SET s1pass='Eligible' WHERE username = '$ls'   ";
        $result = mysqli_query($db,$sql);
        }
            else if($sub=="q2"){
        $sql = "update studentinfo SET s2pass='Eligible' WHERE username = '$ls'   ";
        $result = mysqli_query($db,$sql);
        }
              else if($sub=="q3"){
        $sql = "update studentinfo SET s3pass='Eligible' WHERE username = '$ls'   ";
        $result = mysqli_query($db,$sql);
        }
              else if($sub=="q4"){
        $sql = "update studentinfo SET s4pass='Eligible' WHERE username = '$ls'   ";
        $result = mysqli_query($db,$sql);
        }
              else if($sub=="q5"){
        $sql = "update studentinfo SET s5pass='Eligible' WHERE username = '$ls'   ";
        $result = mysqli_query($db,$sql);
        }
        
    }

?>
    <footer>
      <div class="container">
    You have been successfully Completed the quiz.
To go in login page click <a href="login.php">here</a> 
      </div>
    </footer>
  </body>
</html>