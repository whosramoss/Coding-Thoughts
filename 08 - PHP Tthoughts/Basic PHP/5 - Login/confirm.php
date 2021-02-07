<?php
	$host = "mysql:dbname = u99_dados;host=localhost";
	$user = "(name_database)";
	$pass = "test@123";

	try{
		$pdo = new PDO($host, $user, $pass);
	}
	catch(PDOExecption $e){
		echo "Error: ". $e-> getMessage();
	}
	
	$h = $_GET['h'];

	if(!empty($h)){
		$pdo->query("UPDATE myusers SET status='1' WHERE MD5(id)= '$h' ");
		echo "Registration confirmed successfully !!";
	}
?>