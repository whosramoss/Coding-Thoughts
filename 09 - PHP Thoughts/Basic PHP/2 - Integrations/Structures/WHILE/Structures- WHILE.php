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
      $i = 1;
   		while ($i <= 5) {
      		$v = "num" . $i;
      		$url = "v" . $i;
     		$$v = isset($_GET[$url])?$_GET[$url] : 0;
      		$i++;
   		}
   		echo "$num1 $num2 $num3 $num4 $num5";
   		/*
   		$i = 1;
   		bcompiler_write_header(filehandle)ile ($i <= 5) {
      		$v = "num" . $i;
      		echo "Valor $i : " . $$v . "<br/>";
      		$i++;
   		}
   		*/
    ?>
</div>
</body>
</html>
 