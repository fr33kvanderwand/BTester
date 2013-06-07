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
	if($_GET['f'] == 'post') {	// post/insert data
		if($_GET['i'] == 0) {	// new test; insert new test / id
			$string = "INSERT INTO clients (manufacturer,model,ua,browser,ratio,pixeldepth,colordepth) VALUES ('".$_POST['manufacturer']."','".$_POST['model']."','".$_POST['ua']."','".$_POST['browser']."','".$_POST['ratio']."','".$_POST['pixeldepth']."','".$_POST['colordepth']."')";
			mysqli_query($con,$string);
			$id = mysqli_insert_id($con);
		} else {	// old test; use given id
			$id = $_GET['i'];
		}
		$string = "INSERT INTO resolutions (tid,o,iw,ih,ow,oh,aw,ah,sw,sh) VALUES ('".$id."','".$_POST['o']."','".$_POST['iw']."','".$_POST['ih']."','".$_POST['ow']."','".$_POST['oh']."','".$_POST['aw']."','".$_POST['ah']."','".$_POST['sw']."','".$_POST['sh']."')";
		mysqli_query($con,$string);
		echo( json_encode( array('id'=>$id) ) );	// return id as JSON
	} elseif($_GET['f'] == 'get') {	// get/select data
		$data = array();
		$string = "SELECT time, o, iw, ih, ow, oh, aw, ah, sw, sh, manufacturer, model, ua, browser, ratio, pixeldepth, colordepth FROM resolutions, clients WHERE clients.id = tid ORDER BY ".$_GET['o'];
		$result = mysqli_query($con,$string);
		while($row = mysqli_fetch_row($result)) {
			$data[] = $row;
		}
		echo json_encode($data);
	} else {
		echo("unknown value for 'f'");
	}
}
mysqli_close($con);
?>