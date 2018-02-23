<html>
<head>
<link rel="stylesheet" href="design.css">

<link rel="stylesheet" href="des.css">
</head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	<script src="jquery.min.js"></script>
		<script src="chartphp.js"></script>
		<link rel="stylesheet" href="chartphp.css">
  <body bgcolor="blue">
<style>
table {
    border-collapse: collapse;
    width: 25%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #FF69B4;
    color: white;
}
button {
    background-color: 	#FF0000;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 10%;
}
</style>
<div id="whole">

<div id="nav1">
<?php include 'adminheader.php';?>
</div><div id="center1">

<?php
include("chartphp_dist.php");
$bdname=$_POST['bdname'];
$p = new chartphp();

define('DB_HOST', 'localhost:3306'); 
 define('DB_NAME', 'hackathon'); 
 define('DB_USER','root'); 
 define('DB_PASSWORD',''); 
 $con=mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME) or die("Failed to connect to MySQL: " . mysqli_error());
 $query = "SELECT * FROM birdsd where Birdname='$bdname'";
$data=mysqli_query($con,$query);
$arr = array();
$arr1=array();
  $result = mysqli_query($con,$query) or die(mysqli_error());  
  
   
//echo "<table><tr><th>Year</th><th>Count</th></tr>";

  		while( $row = mysqli_fetch_assoc( $result ) ) {
 $arr[] = $row[ 'Year' ];
 $arr1[]=$row['Count'];
$cnt=$cnt+$row['Count'];
 //echo "<tr><td>".$row['Year']."</td><td>".$row['Count']."</td></tr>";
}
//echo "</table>";


$query = "SELECT SUM(Count) AS value_sum FROM birdsd where Birdname='$bdname' and Year='$arr[0]'";
$query_run = mysqli_query($con,$query);
$row = mysqli_fetch_assoc($query_run); 
$sum = $row['value_sum'];



$query = "SELECT SUM(Count) AS value_sum1 FROM birdsd where Birdname='$bdname' and Year='$arr[1]'";
$query_run = mysqli_query($con,$query);
$row = mysqli_fetch_assoc($query_run); 
$sum1 = $row['value_sum1'];




$query = "SELECT SUM(Count) AS value_sum2 FROM birdsd where Birdname='$bdname' and Year='$arr[2]'";
$query_run = mysqli_query($con,$query);
$row = mysqli_fetch_assoc($query_run); 
$sum2 = $row['value_sum2'];




$query = "SELECT SUM(Count) AS value_sum3 FROM birdsd where Birdname='$bdname' and Year='$arr[3]'";
$query_run = mysqli_query($con,$query);
$row = mysqli_fetch_assoc($query_run); 
$sum3 = $row['value_sum3'];

$query = "SELECT SUM(Count) AS value_sum4 FROM birdsd where Birdname='$bdname' and Year='$arr[4]'";
$query_run = mysqli_query($con,$query);
$row = mysqli_fetch_assoc($query_run); 
$sum4 = $row['value_sum4'];

$query = "SELECT SUM(Count) AS value_sum5 FROM birdsd where Birdname='$bdname' and Year='$arr[5]'";
$query_run = mysqli_query($con,$query);
$row = mysqli_fetch_assoc($query_run); 
$sum5 = $row['value_sum5'];

$query = "SELECT SUM(Count) AS value_sum6 FROM birdsd where Birdname='$bdname' and Year='$arr[6]'";
$query_run = mysqli_query($con,$query);
$row = mysqli_fetch_assoc($query_run); 
$sum6 = $row['value_sum6'];

$query = "SELECT SUM(Count) AS value_sum7 FROM birdsd where Birdname='$bdname' and Year='$arr[7]'";
$query_run = mysqli_query($con,$query);
$row = mysqli_fetch_assoc($query_run); 
$sum7 = $row['value_sum7'];



$p->data = array(array(array($arr[0],$sum),array($arr[1],$sum1),array($arr[2],$sum2),array($arr[3],$sum3),array($arr[4],$sum4),array($arr[5],$sum5),array($arr[6],$sum6),array($arr[7],$sum7),array("Total",$cnt)));
$p->chart_type = "bar";
?><center><b><div style ='font-size:24px;font-family:Sofia;color:#FFFFFF'><?php
// Common Options
$p->title = $bdname;
$p->xlabel = "Year";
$p->ylabel = "Bird Count";
$p->export = false;
$p->options["legend"]["show"] = true;
$p->series_label = array('Q1','Q2','Q3'); 

$out = $p->render('c1');
?>
		<div style="width:40%; min-width:450px;">
<?php echo $out;
?>
		</div>
		</div>
<?php include 'footer.php';?></div>
		
</div>
</body>
</html>

