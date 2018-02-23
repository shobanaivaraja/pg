<html>
<link rel="stylesheet" href="w3.css">
<form name="login-form" method="post">
<font color="black">
  <div class="heading"><B>SIGN IN</B></div>
  <div class="left">
    <label for="email">Email</label> <br />
    <input type="email" name="email" id="email" required> <br />
    <label for="password">Password</label> <br />
    <input type="password" name="pwd" id="pwd" required><br> 
	<input class="button" type="submit" id="submitBtn" value="Log in"/> 
  </div>
  </font>
</form>  
</html>
<?php
if(isset($_POST['email'])and isset($_POST['pwd'])){
$email=$_POST['email'];
$pwd=$_POST['pwd'];
include 'dbcon.php';
$sql="SELECT EmailID,Password FROM admin WHERE EmailID='$email'";

$result=mysqli_query($con,$sql) or die(mysqli_error());
while($rws=  mysqli_fetch_array($result,MYSQLI_ASSOC)){

$emailid=$rws['EmailID'];
$password=$rws['Password'];
 
}

if($emailid==$email && $password==$pwd)
{ 
		session_start(); 
        $_SESSION['adminlog']=1;
        $_SESSION['adminid']=$username;
		header('location:Adminlayout.php');}
   
else{?>
	
<script> alert('Wrong Password!');window.location='layout.php'</script>
<?php			}      
}
?>

  