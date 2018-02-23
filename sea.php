<html>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="he.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  input[type="text"],
input[type="password"],
input[type="date"],
input[type="datetime"],
input[type="email"],
input[type="number"],
input[type="search"],
input[type="tel"],
input[type="time"],
input[type="url"],
textarea,
select {
  background: rgba(255,255,255,0.1);
  border: none;
  font-size: 16px;
  height: auto;
  margin: 0;
  outline: 0;
  padding: 15px;
  width: 30%;
  background-color: #e8eeef;
  color: #8a97a0;
  box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
  margin-bottom: 30px;
}
button {
  padding: 19px 39px 18px 39px;
  color: #FFF;
  background-color: #000080;
  font-size: 18px;
  text-align: center;
  font-style: normal;
  border-radius: 5px;
  width: 30%;
  border: 1px solid #000080;
  border-width: 1px 1px 3px;
  box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
  margin-bottom: 10px;
}

fieldset {
  margin-bottom: 30px;
  border: none;
}

legend {
  font-size: 1.4em;
  margin-bottom: 10px;
}

label {
  display: block;
  margin-bottom: 8px;
}

label.light {
  font-weight: 300;
  display: inline;
}
</style>
<body>
<div id="whole">
<div id="nav1">
<?php include 'adminheader.php';?>
</div>
<div id="center1">
<form action="seas.php" method="POST">

    <label><center><b>Birdname</b></label></center>
    <center>
<?php
	include("db.php");
	$season=$_POST['season'];
	session_start();
	$_SESSION['season']=$season;
$query="Select Birdname from seasonspecific where Season='$season'";
$res=mysqli_query($con,$query) or die(mysqli_error($con));
if(mysqli_num_rows($res)>0)
{
	echo"<select name='bdname'>";
	while($info = mysqli_fetch_array( $res,MYSQLI_ASSOC ))
{
	echo "<option>".$info['Birdname'];
	}
 echo "</option></select>";
}
?>  
<center>From<br><select name="fyear">
<option>2015</option>
<option>2016</option>
<option>2017</option>
</select>
<center>To<br><select name="tyear">
<option>2015</option>
<option>2016</option>
<option>2017</option>
</select>


<center><button type="submit"  name="view">View</submit></center>
</form>
</div>
<?php include 'footer.php';?>
</div>
</body>
</html>