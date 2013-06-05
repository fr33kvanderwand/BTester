<?php
$con = mysqli_connect('localhost','root','','btester');
if(mysqli_connect_errno($con))
{
	echo "Failed to connect to MySQL: " . mysqli_connection_error();
} else {
	$string = "INSERT INTO beta (id,ua,vp,ires,ores,ares,sres,bat,con,hw,charging) 
	VALUES ('', '".$_POST['useragent']."','".$_POST['viewport']."','".$_POST['innerres']."','".$_POST['outerres']."','".$_POST['availres']."','".$_POST['screenres']."','".$_POST['battery']."','".$_POST['connection']."','".$_POST['hardware']."','".$_POST['charging']."')";
	mysqli_query($con,$string);
}
echo $string;
mysqli_close($con);
?>