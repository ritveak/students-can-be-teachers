<html>
<head><title>Login</title>
    <style>
        form{
            text-align: center;
            margin-top: 11%;
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
    <p><font size="6">Login</font></p>
</head>
<body>
    
    <form action="" method= "POST">
    <h4 style="border: 12px solid #4CAF50; border-style:groove;border-radius: 0px 20px 0px 20px; padding:60px;margin:auto;width:40%;">
        Username :
        <input type= "text"  name ="username" required>
        <br><br>
        Password :
        <input type="password"   name= "password" required> 
        <br><br>
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
        // username and password sent from form 
        $myusername = mysqli_real_escape_string($db,$_POST['username']);
        $mypassword = mysqli_real_escape_string($db,$_POST['password']); 
        
        $sql = "SELECT * FROM studentinfo WHERE username = '$myusername' and password = '$mypassword'";
        $result = mysqli_query($db,$sql);
        $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
        //$active = $row['active'];
        
        $count = mysqli_num_rows($result);
        
        // If result matched $myusername and $mypassword, table row must be 1 row
          
        if($count == 1) {
           //session_register("myusername");
           session_start();

           $_SESSION['login_user'] = $myusername;
           header("location: loggedin.php");
        }else {
          
            echo "<script> alert('Wrong Credentials')</script>";
        }
   }

?>