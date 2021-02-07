<?php
	$host = "mysql:dbname = u99_dados;host=localhost";
	$user = "(name_database)";
	$pass = "test@123";

	try{
		$pdo = new PDO($host, $user, $pass);
	}
	catch(PDOExecption $e){
		echo "Falha: ". $e-> getMessage();
	}

	$user = addslashes($_POST['user']);
	$pass = md5(addcslashes($_POST['pass'],));

	$sql = $pdo ->query("SELECT*FROM myusers WHERE status='1' and user='$user' and pass='$pass' ");
	if($sql->rowCount() > 0 ){
		echo "Successfully logged in !!";
	}
	else{
		echo "Invalid Username or Password. <br/> Or you have not yet confirmed the registration in your email";
	}	
?>