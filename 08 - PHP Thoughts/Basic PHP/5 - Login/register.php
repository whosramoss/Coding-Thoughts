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
	
	$user = addslashes($_POST['user']); # addslashes(str) = predicts SQL Injection attacks
	$email = addslashes($_POST['email']);
	$pass = md5(addcslashes($_POST['pass']))
	$pdo -> query("INSERT INTO myusers SET user='$user', email='$email', pass='$pass' ");
	
	$id = $pdo->lastInsertId();
	$md5 = md5($id);
	$assunto = "Confirm your Registration";
	$link = "/confirm.php?h=".$md5;
	$mensagem = "Click here to confirm your registration". $link;
	$header = "From: You";
	mail($email, $assunto, $mensagem, $header);
?>