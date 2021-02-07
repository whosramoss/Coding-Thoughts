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
        $v = isset($_GET["val"])?$_GET["val"]:1;
        echo "<h1>Calculating the factorial of $v </h1>";
        $c = $v;
        $fat = 1;
        do {
            $fat = $fat * $c;
            $c--;
        } while ($c >= 1);
        echo "<h2>$v ! = $fat";
        // // COUNTER
        // $c = 1;
        // do { echo "$c "; $c++; } while($c<=10);
        // // REGRESSIVE COUNTER
        // $c = 10;
        // do { echo "$c "; $c--; } while($c>=1);
    ?>
    <p><a href="Structures- DOWHILE.html" class="botao">BACK</a></p>
</div>
</body>
</html>
 