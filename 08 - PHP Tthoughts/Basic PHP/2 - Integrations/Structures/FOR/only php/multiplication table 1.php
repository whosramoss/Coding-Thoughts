<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./../../style"/>
	<meta charset="UTF-8"/>
	<title>Basic PHP</title>
</head>
<body>
<div>
    <form method="get" action="multiplication table 2.php">
        <select name="num">
            <?php
                for ($c=1; $c<=10; $c++) {
                    echo "<option>$c</option>";
                }
            ?>
        </select>
        <input type="submit" value="GO"/>
    </form>
</div>
</body>
</html>
 