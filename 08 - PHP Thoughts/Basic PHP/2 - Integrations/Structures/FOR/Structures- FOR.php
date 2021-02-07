<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./../style.css"/>
<meta charset="UTF-8"/>
<title>Basic PHP</title>
</head>
<body>
<div>
<?php
       $n = isset($_GET["num"])?$_GET["num"]:1;
	   echo "<h1>Loading number $n ...</h1>";
	   echo "multiple values: ";
	   $mult = 0;
	   for ($c = 1; $c <= $n; $c++) {
			if ($n % $c == 0) {
				$mult++;
				echo "$c ";
			}
		}
		echo "<p> multiple values total =  $mult </p>";
		echo "<h2> Result = $n <span class='foco'>";
		if ($mult <= 2) {
			echo " is PRIME ";
		} else {
			echo " is NOT PRIME ";
		}
		 echo "</span></h2>";
    ?>
	<br/>
	<a href="javascript:history.go(-1)" class="botao">BACK</a>
</div>
</body>
</html>
 