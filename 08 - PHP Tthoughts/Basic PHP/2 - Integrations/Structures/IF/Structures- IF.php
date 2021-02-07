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
        $pro = isset($_GET["prod"])?$_GET["prod"]:"whitout name";
		$pre = isset($_GET["price"])?$_GET["price"]:0;
		$typ = isset($_GET["type"])?$_GET["type"]:"i";
		$per = isset($_GET["perc"])?$_GET["perc"]:0;
		if ($typ == "I") {
			$new = $pre + ($pre * $per/100);
			$mode = "Increase";
		}
		else {
			$new = $pre - ($pre * $per/100);
			$mode = "Decrease";
		}
		echo "The <span class='foco'>$pro</span> product cost <span class='foco'>$" . number_format($pre,2) ."</span>. <br/> <span class='foco'>". number_format($per,1) . "%</span> <span class='foco'>$mode</span> was applied.<br/> New price : <span class='foco'>R$" . number_format($new, 2) . "</span>.<br/>";
    ?>
	<br/><a href="javascript:history.go(-1)" class="botao">Back</a>
</div>
</body>
</html>
 