<html>
<link rel="stylesheet" href="w3.css">
<form id="login-form" method="post">
<font color="black">
  <div class="heading"><B>SIGN IN</B></div>
  <div class="left">
    <label for="username">Username</label> <br>
    <input type="text" name="user" id="user" required/> <br>
    <label for="password">Password</label> <br />
    <input type="password" name="pwd" id="pwd" required/> <br>
  <center>  <input class="button" type="submit" id="submitBtn" value="Log in" /> 
  </div>
  </font>
</form>  
</html>
<?php
if(isset($_POST['user'])and isset($_POST['pwd'])){
include 'dbcon.php';
$user=$_POST['user'];
$pwd=$_POST['pwd'];

$sql="SELECT * FROM `userdet` WHERE `Username`='$user'";
$result=mysqli_query($con,$sql) or die(mysqli_error());
while($rws=  mysqli_fetch_array($result,MYSQLI_ASSOC)){

$username=$rws['Username'];
$password=$rws['Password'];
 
}
if($username==$user && $password==$pwd)
{ 
 session_start(); //session_start()-creates a session or resumes the current one 
        $_SESSION['userlog']=1;
        $_SESSION['userid']=$username;
    header('location:addbird.php');}
   
else{
	?>
<script> alert('Wrong Password!');window.location='layout.php'</script>
<?php			}}
?>

  