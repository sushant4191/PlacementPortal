<?php
	echo "Welcome to the connected Placement Portal Database";
	echo "<br>";
	$server='localhost';
	$port=3306;
	$uname='root';
	$pass='';
	$dbname="placement_portal"; 

	try
	{
		$conn = new PDO("mysql:host=$server; port=$port, dbname=$dbname", $uname, $pass);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		echo "Connection Successful.";
	}
	catch(PDOException $e)
	{
		echo "Connection failed: ".$e->getMessage();
	}

?>