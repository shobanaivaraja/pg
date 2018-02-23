<html>
<head>
		<script src="jquery.min.js"></script>
		<script src="chartphp.js"></script>
        <link rel="stylesheet" href="he.css">
		<link rel="stylesheet" href="chartphp.css">
	</head>
	
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
</style><body>
	<body>
	<div id="whole">
<div id="nav1">
<?php include 'adminheader.php';?>
</div>
<div id="center1">

<?php
/**
 * Charts 4 PHP
 *
 * @author Shani <support@chartphp.com> - http://www.chartphp.com
 * @version 1.2.3
 * @license: see license.txt included in package
 */
 if(isset($_POST['view']))
 {
include("chartphp_dist.php");

$p = new chartphp();

define('DB_HOST', 'localhost:3306'); 
 define('DB_NAME', 'hackathon'); 
 define('DB_USER','root'); 
 define('DB_PASSWORD',''); 
session_start();
 $season=$_SESSION['season'];

 $con=mysql_connect(DB_HOST,DB_USER,DB_PASSWORD) or die("Failed to connect to MySQL: " . mysql_error());
 $db=mysql_select_db(DB_NAME,$con) or die("Failed to connect to MySQL: " . mysql_error());
 $bdname=$_POST['bdname']; 
 $fy=$_POST['fyear'];
 //echo $fy;
 $ty=$_POST['tyear'];
 $_SESSION['fy']=$_POST['fy'];
 $_SESSION['ty']=$_POST['ty'];
$query = "SELECT * FROM seasonspecific where Birdname='$bdname'";
$data=mysql_query($query) or die(mysql_error());
if($data)
{
	while($r=mysql_fetch_array($data))
		$id=$r['id'];
}
$query = "SELECT * FROM birdsd where id='$id' and Season='$season'  and Year between '$fy' and '$ty'";
$data=mysql_query($query);
if(mysql_num_rows($data)>0)
{
$arr = array();
$arr1=array();
  $result = mysql_query($query) or die(mysql_error());  
  
//echo "<table><tr><th>Year</th><th>Count</th></tr>";
		while( $row = mysql_fetch_assoc( $result ) ) {
 $arr[] = $row['Year' ];
 $arr1[]=$row['Count'];
 //echo "<tr><td>".$row['Year']."</td><td>".$row['Count']."</td></tr>";

}
//echo "</table>";


$ss=array();
$ss = range($fy,$ty);

$query = "SELECT SUM(Count) AS value_sum1 FROM birdsd where id='$id' and Season='$season' and Year='$ss[0]'";

$query_run = mysql_query($query);
$row = mysql_fetch_assoc($query_run); 
$sum1 = $row['value_sum1'];
$query = "SELECT SUM(Count) AS value_sum2 FROM birdsd where id='$id' and  Season='$season' and Year='$ss[1]'";
$query_run = mysql_query($query);
$row = mysql_fetch_assoc($query_run); 
$sum2 = $row['value_sum2'];


$query = "SELECT SUM(Count) AS value_sum3 FROM birdsd where id='$id' and Season='$season' and Year='$ss[2]'";
$query_run = mysql_query($query);
$row = mysql_fetch_assoc($query_run); 
$sum3 = $row['value_sum3'];



$p->data = array(array(array($ss[0],$sum1),array($ss[1],$sum2),array($ss[2],$sum3)));
$p->chart_type = "bar";
?><center><b><div style ='font-size:24px;font-family:Sofia;color:#FFFFFF'><?php
// Common Options
$p->title = $bdname;
$p->xlabel = "year";
$p->ylabel = "Bird Count";
$p->export = false;
$p->options["legend"]["show"] = true;
$p->series_label = array('Q1','Q2','Q3'); 

$out = $p->render('c1');
?>		<div style="width:40%; min-width:450px;">
<?php echo $out; 
}
 }
?>
</div>
		</div>
<div>
<?php include 'footer.php';?>
</div>
	</body>
</html>
