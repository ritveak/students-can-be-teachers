<html>
<head><title>Register</title>
    <style>
        form{
            
            
            text-align: center;
            margin-top: 1%;
        }
        h2
        {
            padding : 15px;
        }
    
        p
        {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            
        }
        button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 10%;
}
        
    
    </style>
    <p><font size="6">Registration Form</font></p>
</head>
<body>
    
    <form action="" method= "POST">
    <h4 style="border: 12px solid #4CAF50; border-style:groove;border-radius: 0px 20px 0px 20px; padding:60px; padding-top = 30px;margin:auto;width:40%;">
        Username :
        <input type= "text"  name ="username" required>
        <br><br>
        Password :&nbsp
        <input type="password"   name= "password" required> 
        <br><br>
        First Name :   
        <input type="text" name="fname" required>
        
        <br><br>
        Last Name : 
        <input type="text" name= "lname" required>
        <br><br>
        Currclass : 
        <input type="number" name="currclass" required>
        <br>
        <br><div >
        &nbsp &nbsp Gender &nbsp &nbsp: 
         &nbsp Male<input type ="radio" name ="gender" value="M">
        &nbsp &nbsp Female<input type="radio"   name= "gender" value ="F" >
        <br><br></div>
        Contact no : 
        <input type="number" name="contact" required >
        <br>
        <br>
        Email id  : 
        <input type="text" name="emailid" required >
        <br>
        <br>

       
<!--
        Science <select name = "s1">   <option value = "0">No </option>  <option value = "1"> Yes </option> </select> <br>
        Maths <select name = "s2">   <option value = "0">No </option>  <option value = "1"> Yes </option> </select> <br>
        SST  <select name = "s3">  <option value = "0">No </option>  <option value = "1"> Yes </option> </select> <br>
        Hindi <select name = "s4">   <option value = "0">No </option>  <option value = "1"> Yes </option> </select> <br>
        English <select name = "s5">   <option value = "0">No </option>  <option value = "1"> Yes </option> </select> <br>
-->

        <!-- <input type="radio" name="s1" value="1"> s1<br>
        <input type="radio" name="s2" value="1"> s2<br>
        <input type="radio" name="s3" value="1"> s3<br>
        <input type="radio" name="s4" value="1"> s4<br>
        <input type="radio" name="s5" value="1"> s5<br> -->

        <div>
            &nbsp Select Preffered Schools for teaching :<br><br>

        &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp First preference &nbsp &nbsp &nbsp:&nbsp <select name = "sp1">   <option value = "a">a </option>  <option value = "b"> b </option><option value = "c">  c </option>  </select>
        <br>&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp Second preference &nbsp:&nbsp&nbsp<select name = "sp2">   <option value = "a">a </option>  <option value = "b"> b </option><option value = "c"> c </option></select>
        <br>&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp Third preference &nbsp&nbsp&nbsp:&nbsp&nbsp<select name = "sp3">   <option value = "a">a </option>  <option value = "b"> b </option><option value = "c"> c </option></select>
        
        </div><br>
        <input type="submit">
       
    </h2>
    </form>
    
</body>





<?php


    define('DB_SERVER', 'localhost');
    define('DB_USERNAME', 'root');
    define('DB_PASSWORD', '');
    define('DB_DATABASE', 'c2c');
    $db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);

    if($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = mysqli_real_escape_string($db,$_POST['username']);
    $password = mysqli_real_escape_string($db,$_POST['password']);
    $hash=password_hash($password,PASSWORD_DEFAULT);
    $fname = mysqli_real_escape_string($db,$_POST['fname']);
    $lname = mysqli_real_escape_string($db,$_POST['lname']);
    $currclass= mysqli_real_escape_string($db,$_POST['currclass']);
    $gender= mysqli_real_escape_string($db,$_POST['gender']);
    $contact= mysqli_real_escape_string($db,$_POST['contact']);
    $emailid= mysqli_real_escape_string($db,$_POST['emailid']);
//    
//     $s1= mysqli_real_escape_string($db,$_POST['s1']);
//     $s2= mysqli_real_escape_string($db,$_POST['s2']);
//     $s3= mysqli_real_escape_string($db,$_POST['s3']);
//     $s4= mysqli_real_escape_string($db,$_POST['s4']);
//     $s5= mysqli_real_escape_string($db,$_POST['s5']);
    
    $sp1= mysqli_real_escape_string($db,$_POST['sp1']);
    $sp2= mysqli_real_escape_string($db,$_POST['sp2']);
    $sp3= mysqli_real_escape_string($db,$_POST['sp3']);

    // CHECK DUPLICATE USERNAMES : TIME MILE TOH IMPLEMENT

    $sql1 = "INSERT INTO `studentinfo`(`username`, `password`, `fname`, `lname`, `currclass`, `gender`, `contact`, `emailid`) VALUES ('$username','$password','$fname','$lname','$currclass','$gender','$contact','$emailid')";
    $result1 = mysqli_query($db,$sql1);

    $sql2 = "INSERT INTO `studentpref`(`username`, `sp1`, `sp2`, `sp3`) VALUES ('$username','$sp1','$sp2','$sp3')";
    $result2 = mysqli_query($db,$sql2);

    header("location: index.php");
}
?>