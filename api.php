<?php
// api.php
// autor: freek van der wand
// description: API between JS and DB
// version history:
// 2013-06-06	merged submit.php and get.php

$server = 'localhost';
$user = 'root';
$password = '';
$database = 'btester';
$table = "beta";

$con = mysqli_connect($server,$user,$password,$database);

if(mysqli_connect_errno($con)) {
	echo "Failed to connect to MySQL: " . mysqli_connection_error();
} else {

	if($_GET['f'] == 'post') {
		$string = "INSERT INTO ".$table." (id,ua,vp,ires,ores,ares,sres,bat,con,hw,charging,browser,orientation,pratio,pdepth) 
		VALUES ('', '".$_POST['useragent']."','".$_POST['viewport']."','".$_POST['innerres']."','".$_POST['outerres']."','".$_POST['availres']."','".$_POST['screenres']."','".$_POST['battery']."','".$_POST['connection']."','".$_POST['hardware']."','".$_POST['charging']."','".$_POST['brow']."','".$_POST['orient']."','".$_POST['pratio']."','".$_POST['pdepth']."')";
		mysqli_query($con,$string);
		echo($string);
	} elseif($_GET['f'] == 'get') {
		$data = array();
		$string = "select * from ".$table;
		$result = mysqli_query($con,$string);
		while($row = mysqli_fetch_row($result)) {
			$data[] = $row;
		}
		echo json_encode($data);
	}
}
mysqli_close($con);
?>