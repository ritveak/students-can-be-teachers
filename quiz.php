 <?php
 session_start();

 if (isset($_SESSION['quizz'])) {
     $username =$_SESSION['login_user'];
 ?>
<?php include "database.php"; ?>

<?php
	//Get the total questions
	$query="select * from questions";
	//Get Results
	$results = $mysqli->query($query) or die ($mysqli->error.__LINE__);
	$total = $results->num_rows;

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
        <h2>Test your PHP Knowledge</h2>
	<p>This is a multiple choice quize to test your knowledge about something</p>
	<ul>
		<li><strong>Number of Questions: </strong><?php echo $total; ?></ul>
		<li><strong>Type: </strong>Multiple Choice</ul>
		<li><strong>Estimatd Time: </strong><?php echo $total*0.5; ?> minutes</ul>
	</ul>
	<a href="question5.php?n=1" class="start">Maths</a>
      <a href="question4.php?n=1" class="start">Science</a>
      <a href="question3.php?n=1" class="start">Social Science</a>
      <a href="question2.php?n=1" class="start">English </a>
      <a href="question1.php?n=1" class="start">Hindi</a>
      </div>
    </div>
    </main>

  </body>
</html>
 <?php
session_start();

           $_SESSION['login_user'] = $username;
 } else {
   ?>
   Not logged in HTML and code here
   <?php
 }