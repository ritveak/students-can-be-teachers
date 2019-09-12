<?php
 session_start();

 if (isset($_SESSION['admin'])) {
 ?>
 <h1>Enter class marks:</h1>
 <form action="" method="post">
 	Class<input type="text" required name="class">
    <table>
     <tr>
         <td>Hindi :</td><td>Marks:</td><td><input type="number" name="m1"></td><td>StuTeacher username:</td><td><input type="text" name="t1"></td></tr>
        <tr>
        <td>English :</td><td>Marks:</td><td><input type="number" name="m2"></td><td>StuTeacher username:</td><td><input type="text" name="t2"></td></tr><tr>
        <td>Science :</td><td>Marks:</td><td><input type="number" name="m3"></td><td>StuTeacher username:</td><td><input type="text" name="t3"></td></tr><tr>
<td>Social Science :</td><td>Marks:</td><td><input type="number" name="m4"></td><td>StuTeacher username:</td><td><input type="text" name="t4"></td></tr><tr>
<td>Maths :</td><td>Marks:</td><td><input type="number" name="m5"></td><td>StuTeacher username:</td><td><input type="text" name="t5"></td></tr>
     </table>
  <input type="submit">	
 </form>


     <button style='margin-right:260px' 'margin-left:40px'>
      <a  href="logout.php"><h1>Logout</h1></a>
     </button>
   
<?php


    define('DB_SERVER', 'localhost');
    define('DB_USERNAME', 'root');
    define('DB_PASSWORD', '');
    define('DB_DATABASE', 'c2c');
    $db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);

    if($_SERVER["REQUEST_METHOD"] == "POST") {
    $classname = mysqli_real_escape_string($db,$_POST['class']);
    $marks1 = mysqli_real_escape_string($db,$_POST['m1']);
    $teacher1 = mysqli_real_escape_string($db,$_POST['t1']);
 $marks2 = mysqli_real_escape_string($db,$_POST['m2']);
    $teacher2 = mysqli_real_escape_string($db,$_POST['t2']);
         $marks3 = mysqli_real_escape_string($db,$_POST['m3']);
    $teacher3 = mysqli_real_escape_string($db,$_POST['t3']);
         $marks4 = mysqli_real_escape_string($db,$_POST['m4']);
    $teacher4 = mysqli_real_escape_string($db,$_POST['t4']);
         $marks5 = mysqli_real_escape_string($db,$_POST['m5']);
    $teacher5 = mysqli_real_escape_string($db,$_POST['t5']);

    // CHECK DUPLICATE USERNAMES : TIME MILE TOH IMPLEMENT

    $sql1 = "INSERT INTO `classmarks`(`class`, `m1`, `t1`, `m2`, `t2`, `m3`, `t3`, `m4`,`t4`, `m5`,`t5`) VALUES ('$classname','$marks1','$teacher1','$marks2','$teacher2','$marks3','$teacher3','$marks4','$teacher4','$marks5','$teacher5')";
    $result1 = mysqli_query($db,$sql1);
    
    echo "Value has been successfullly inserted!!!";
        echo $teacher1;
    if($marks1<40)
    {
         echo $marks1;
        $sql = "update studentinfo SET s1pass='NotEligible(already_done)' WHERE username = '$teacher1'   ";
        $result = mysqli_query($db,$sql);
        
    }
        
        if($marks2<40)
    {
         
        $sql = "update studentinfo SET s2pass='NotEligible(already_done)' WHERE username = '$teacher2'   ";
        $result = mysqli_query($db,$sql);
        
    }
            if($marks3<40)
    {
         
        $sql = "update studentinfo SET s3pass='NotEligible(already_done)' WHERE username = '$teacher3'   ";
        $result = mysqli_query($db,$sql);
        
    }
                 if($marks4<40)
    {
         
        $sql = "update studentinfo SET s4pass='NotEligible(already_done)' WHERE username = '$teacher4'   ";
        $result = mysqli_query($db,$sql);
        
    }
                      if($marks5<40)
    {
         
        $sql = "update studentinfo SET s5pass='NotEligible(already_done)' WHERE username = '$teacher5'   ";
        $result = mysqli_query($db,$sql);
        
    }
}
?>



 <?php

 } else {
   ?>
   Sorry, You sre Not logged in. To go in login page click <a href="login.php">here</a> 
   <?php
 }