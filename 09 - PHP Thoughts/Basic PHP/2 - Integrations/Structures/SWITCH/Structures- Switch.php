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
        $d = isset($_GET["dw"])?$_GET["dw"]:0;
        switch ($d) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                echo "Get up and go to study! :)";
                break;
            case 7:
            case 8:
                echo "Weekend, let's drink)";
                break;
            default:
                echo "Invalid day of the week";
        }
    ?>
	<br/><a href="javascript:history.go(-1)" class="botao">Back</a>
</div>
</body>
</html>
 